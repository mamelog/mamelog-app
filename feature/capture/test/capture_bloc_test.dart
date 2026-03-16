import 'dart:typed_data';

import 'package:bloc_test/bloc_test.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/extraction.dart';
import 'package:core_model/user.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:feature_capture/src/bloc/capture_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCreateExtractionUseCase extends Mock implements CreateExtractionUseCase {}

class MockSaveBeanUseCase extends Mock implements SaveBeanUseCase {}

class MockAuthenticator extends Mock implements Authenticator {}

class MockEnqueueOfflineExtractionUseCase extends Mock implements EnqueueOfflineExtractionUseCase {}

class FakeBean extends Fake implements Bean {}

class TestCaptureBloc extends CaptureBloc {
  TestCaptureBloc(
    super._createExtractionUseCase,
    super._saveBeanUseCase,
    super._authenticator,
    super._enqueueOfflineUseCase, {
    this.offline = false,
    this.enqueueUseCase,
  });

  final bool offline;
  final EnqueueOfflineExtractionUseCase? enqueueUseCase;

  @override
  Future<ProcessedImage> processImage(String path) async => ProcessedImage(
    bytes: Uint8List.fromList([1, 2, 3]),
    fileName: 'test.jpg',
  );

  @override
  Future<bool> checkIsOffline() async => offline;

  @override
  Future<void> enqueueOffline(
    String imagePath,
    Emitter<CaptureState> emit,
  ) async {
    if (enqueueUseCase == null) return;
    final result = await enqueueUseCase!.execute(imagePath);
    result.when(
      ok: (_) => emit(
        const CaptureState.offlineQueued(
          message: 'Image saved. It will be processed when you are back online.',
        ),
      ),
      error: (e) => emit(
        CaptureState.extractionFailed(
          imagePath: imagePath,
          error: 'Failed to queue: $e',
        ),
      ),
    );
  }
}

void main() {
  late CreateExtractionUseCase createExtractionUseCase;
  late SaveBeanUseCase saveBeanUseCase;
  late Authenticator authenticator;
  late EnqueueOfflineExtractionUseCase enqueueOfflineUseCase;
  late CaptureBloc captureBloc;

  setUpAll(() {
    registerFallbackValue(FakeBean());
    registerFallbackValue(Uint8List(0));
  });

  setUp(() {
    createExtractionUseCase = MockCreateExtractionUseCase();
    saveBeanUseCase = MockSaveBeanUseCase();
    authenticator = MockAuthenticator();
    enqueueOfflineUseCase = MockEnqueueOfflineExtractionUseCase();
    captureBloc = TestCaptureBloc(
      createExtractionUseCase,
      saveBeanUseCase,
      authenticator,
      enqueueOfflineUseCase,
    );
  });

  tearDown(() async {
    await captureBloc.close();
  });

  group('CaptureBloc', () {
    test('初期状態: CaptureIdle であること', () {
      expect(captureBloc.state, const CaptureState.idle());
    });

    blocTest<CaptureBloc, CaptureState>(
      '正常系: CaptureStarted イベントで CaptureReady に遷移すること',
      build: () => captureBloc,
      act: (bloc) => bloc.add(const CaptureStarted()),
      expect: () => [const CaptureState.ready()],
    );

    blocTest<CaptureBloc, CaptureState>(
      '正常系: ImageCaptured イベントで Captured 状態に遷移し、画像パスを保持すること',
      build: () => captureBloc,
      act: (bloc) => bloc.add(const ImageCaptured(imagePath: 'test.jpg')),
      expect: () => [const CaptureState.captured(imagePath: 'test.jpg')],
    );

    blocTest<CaptureBloc, CaptureState>(
      '正常系: 抽出成功時に Extracting から Extracted 状態に遷移すること',
      build: () {
        when(
          () => createExtractionUseCase.execute(
            imageBytes: any(named: 'imageBytes'),
            fileName: any(named: 'fileName'),
          ),
        ).thenAnswer(
          (_) async => Result.ok(
            ExtractionResult(
              id: 'id',
              status: ExtractionStatus.completed,
              inputType: ExtractionInputType.photo,
              createdAt: DateTime.now(),
            ),
          ),
        );
        return captureBloc;
      },
      seed: () => const CaptureState.captured(imagePath: 'test.jpg'),
      act: (bloc) => bloc.add(const ExtractionRequested()),
      expect: () => [
        const CaptureState.extracting(imagePath: 'test.jpg'),
        isA<Extracted>(),
      ],
    );

    blocTest<CaptureBloc, CaptureState>(
      '異常系: 抽出失敗時に ExtractionFailed 状態に遷移すること',
      build: () {
        when(
          () => createExtractionUseCase.execute(
            imageBytes: any(named: 'imageBytes'),
            fileName: any(named: 'fileName'),
          ),
        ).thenAnswer((_) async => Result.error(Exception('Failed')));
        return captureBloc;
      },
      seed: () => const CaptureState.captured(imagePath: 'test.jpg'),
      act: (bloc) => bloc.add(const ExtractionRequested()),
      expect: () => [
        const CaptureState.extracting(imagePath: 'test.jpg'),
        isA<ExtractionFailed>(),
      ],
    );

    group('正常系: 保存処理', () {
      blocTest<CaptureBloc, CaptureState>(
        '正常系: 保存成功時に Saving から Saved 状態に遷移すること',
        build: () {
          when(
            () => saveBeanUseCase.execute(any()),
          ).thenAnswer((_) async => const Result.ok(BeanId('id')));
          return captureBloc;
        },
        seed: () => Extracted(
          imagePath: 'test.jpg',
          extraction: ExtractionResult(
            id: 'id',
            status: ExtractionStatus.completed,
            inputType: ExtractionInputType.photo,
            createdAt: DateTime.now(),
            bean: Bean(
              id: const BeanId('id'),
              userId: const UserId('u1'),
              name: 'Coffee',
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            ),
          ),
        ),
        act: (bloc) => bloc.add(const SaveRequested()),
        expect: () => [
          const CaptureState.saving(),
          isA<Saved>(),
        ],
      );
    });

    group('正常系: オフラインキュー', () {
      blocTest<CaptureBloc, CaptureState>(
        '正常系: オフライン時に画像がキューに保存され OfflineQueued に遷移すること',
        build: () {
          when(
            () => enqueueOfflineUseCase.execute(any()),
          ).thenAnswer((_) async => const Result.ok(null));
          return TestCaptureBloc(
            createExtractionUseCase,
            saveBeanUseCase,
            authenticator,
            enqueueOfflineUseCase,
            offline: true,
            enqueueUseCase: enqueueOfflineUseCase,
          );
        },
        seed: () => const CaptureState.captured(imagePath: 'test.jpg'),
        act: (bloc) => bloc.add(const ExtractionRequested()),
        expect: () => [isA<OfflineQueued>()],
      );

      blocTest<CaptureBloc, CaptureState>(
        '異常系: オフラインキュー保存失敗時に ExtractionFailed に遷移すること',
        build: () {
          when(
            () => enqueueOfflineUseCase.execute(any()),
          ).thenAnswer(
            (_) async => Result.error(Exception('Queue failed')),
          );
          return TestCaptureBloc(
            createExtractionUseCase,
            saveBeanUseCase,
            authenticator,
            enqueueOfflineUseCase,
            offline: true,
            enqueueUseCase: enqueueOfflineUseCase,
          );
        },
        seed: () => const CaptureState.captured(imagePath: 'test.jpg'),
        act: (bloc) => bloc.add(const ExtractionRequested()),
        expect: () => [isA<ExtractionFailed>()],
      );
    });
  });
}
