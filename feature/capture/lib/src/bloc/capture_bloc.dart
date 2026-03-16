import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/extraction.dart';
import 'package:core_model/user.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:feature_capture/src/bloc/capture_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

@injectable
class CaptureBloc extends Bloc<CaptureEvent, CaptureState> {
  CaptureBloc(
    this._createExtractionUseCase,
    this._saveBeanUseCase,
    this._authenticator,
    this._enqueueOfflineUseCase,
  ) : super(const CaptureState.idle()) {
    on<CaptureStarted>(_onStarted);
    on<ImageCaptured>(_onImageCaptured);
    on<UrlDetected>(_onUrlDetected);
    on<ManualInputRequested>(_onManualInputRequested);
    on<ExtractionRequested>(_onExtractionRequested);
    on<ExtractionRetried>(_onExtractionRetried);
    on<BeanUpdated>(_onBeanUpdated);
    on<SaveRequested>(_onSaveRequested);
  }

  final CreateExtractionUseCase _createExtractionUseCase;
  final SaveBeanUseCase _saveBeanUseCase;
  final Authenticator _authenticator;
  final EnqueueOfflineExtractionUseCase _enqueueOfflineUseCase;

  void _onStarted(CaptureStarted event, Emitter<CaptureState> emit) {
    emit(const CaptureState.ready());
  }

  void _onImageCaptured(ImageCaptured event, Emitter<CaptureState> emit) {
    emit(CaptureState.captured(imagePath: event.imagePath));
  }

  void _onUrlDetected(UrlDetected event, Emitter<CaptureState> emit) {
    emit(CaptureState.urlInput(url: event.url, inputType: event.inputType));
  }

  Future<void> _onManualInputRequested(
    ManualInputRequested event,
    Emitter<CaptureState> emit,
  ) async {
    final userState = await _authenticator.authStateChanges.first;
    final userId = userState.map<UserId?>(
      initial: (_) => null,
      authenticated: (a) => a.user.id,
      unauthenticated: (_) => null,
    );

    if (userId == null) {
      emit(
        const CaptureState.extractionFailed(
          error: 'User not authenticated',
        ),
      );
      return;
    }

    final now = DateTime.now();
    emit(
      CaptureState.extracted(
        extraction: ExtractionResult(
          id: 'manual-${now.millisecondsSinceEpoch}',
          status: ExtractionStatus.completed,
          inputType: ExtractionInputType.url,
          createdAt: now,
          bean: Bean(
            id: BeanId('temp-${now.millisecondsSinceEpoch}'),
            userId: userId,
            name: '',
            createdAt: now,
            updatedAt: now,
          ),
          confidenceScores: {},
        ),
      ),
    );
  }

  Future<void> _onExtractionRequested(
    ExtractionRequested event,
    Emitter<CaptureState> emit,
  ) async {
    final currentState = state;
    final imagePath = currentState.maybeMap(
      captured: (s) => s.imagePath,
      extractionFailed: (s) => s.imagePath,
      orElse: () => null,
    );
    final url = currentState.maybeMap(
      urlInput: (s) => s.url,
      extractionFailed: (s) => s.url,
      orElse: () => null,
    );
    final inputType = currentState.maybeMap(
      urlInput: (s) => s.inputType,
      extractionFailed: (s) => s.inputType,
      orElse: () => null,
    );

    if (imagePath == null && url == null) {
      emit(
        const CaptureState.extractionFailed(
          error: 'No image or URL to extract from',
        ),
      );
      return;
    }

    // Check connectivity — enqueue for later if offline
    if (imagePath != null) {
      final isOffline = await checkIsOffline();

      if (isOffline) {
        await enqueueOffline(imagePath, emit);
        return;
      }
    }

    emit(
      CaptureState.extracting(
        imagePath: imagePath,
        url: url,
        inputType: inputType,
      ),
    );

    try {
      Result<ExtractionResult> result;
      if (imagePath != null) {
        final processed = await processImage(imagePath);
        result = await _createExtractionUseCase
            .execute(
              imageBytes: processed.bytes,
              fileName: processed.fileName,
            )
            .timeout(const Duration(seconds: 120));
      } else {
        result = await _createExtractionUseCase
            .execute(
              url: url,
              inputType: inputType,
            )
            .timeout(const Duration(seconds: 120));
      }

      result.when(
        ok: (extraction) {
          emit(
            CaptureState.extracted(
              imagePath: imagePath,
              url: url,
              extraction: extraction,
            ),
          );
        },
        error: (e) {
          emit(
            CaptureState.extractionFailed(
              imagePath: imagePath,
              url: url,
              inputType: inputType,
              error: e.toString(),
            ),
          );
        },
      );
    } on Object catch (e) {
      emit(
        CaptureState.extractionFailed(
          imagePath: imagePath,
          url: url,
          inputType: inputType,
          error: e.toString(),
        ),
      );
    }
  }

  /// Checks if the device is currently offline.
  ///
  /// Extracted as a method to allow overriding in tests.
  Future<bool> checkIsOffline() async {
    final results = await Connectivity().checkConnectivity();
    return results.contains(ConnectivityResult.none);
  }

  /// Copies the captured image to the app documents directory and
  /// enqueues it for extraction when connectivity is restored.
  ///
  /// Extracted as a method to allow overriding in tests.
  Future<void> enqueueOffline(
    String imagePath,
    Emitter<CaptureState> emit,
  ) async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final queueDir = Directory(p.join(appDir.path, 'pending_extractions'));
      if (!queueDir.existsSync()) {
        await queueDir.create(recursive: true);
      }

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = p.basename(imagePath);
      final destPath = p.join(queueDir.path, '${timestamp}_$fileName');
      await File(imagePath).copy(destPath);

      await _enqueueOfflineUseCase.execute(destPath);

      emit(
        const CaptureState.offlineQueued(
          message: 'Image saved. It will be processed when you are back online.',
        ),
      );
    } on Object catch (e) {
      emit(
        CaptureState.extractionFailed(
          imagePath: imagePath,
          error: 'Failed to queue for offline processing: $e',
        ),
      );
    }
  }

  Future<void> _onExtractionRetried(
    ExtractionRetried event,
    Emitter<CaptureState> emit,
  ) async {
    add(const ExtractionRequested());
  }

  void _onBeanUpdated(BeanUpdated event, Emitter<CaptureState> emit) {
    state.maybeMap(
      extracted: (s) {
        emit(
          s.copyWith(
            extraction: s.extraction.copyWith(
              bean: event.bean,
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  Future<void> _onSaveRequested(
    SaveRequested event,
    Emitter<CaptureState> emit,
  ) async {
    final currentState = state;
    if (currentState is! Extracted) return;

    final bean = currentState.extraction.bean;
    if (bean == null) return;

    emit(const CaptureState.saving());

    final result = await _saveBeanUseCase.execute(bean);

    result.when(
      ok: (id) => emit(CaptureState.saved(beanId: id.value)),
      error: (e) => emit(
        CaptureState.saveFailed(
          bean: bean,
          extraction: currentState.extraction,
          imagePath: currentState.imagePath,
          url: currentState.url,
          error: e.toString(),
        ),
      ),
    );
  }

  Future<ProcessedImage> processImage(String path) async {
    final bytes = await File(path).readAsBytes();
    final image = img.decodeImage(bytes);
    if (image == null) throw Exception('Failed to decode image');

    var resized = image;
    if (image.width > 1920 || image.height > 1920) {
      resized = img.copyResize(
        image,
        width: image.width > image.height ? 1920 : null,
        height: image.height >= image.width ? 1920 : null,
      );
    }

    final compressed = img.encodeJpg(resized, quality: 80);
    final fileName = 'processed_${p.basenameWithoutExtension(path)}.jpg';

    return ProcessedImage(
      bytes: Uint8List.fromList(compressed),
      fileName: fileName,
    );
  }
}

class ProcessedImage {
  const ProcessedImage({required this.bytes, required this.fileName});
  final Uint8List bytes;
  final String fileName;
}
