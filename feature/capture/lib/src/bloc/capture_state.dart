import 'package:core_model/bean.dart';
import 'package:core_model/extraction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'capture_state.freezed.dart';

@freezed
abstract class CaptureState with _$CaptureState {
  const factory CaptureState.idle() = CaptureIdle;
  const factory CaptureState.ready() = CaptureReady;
  const factory CaptureState.captured({required String imagePath}) = Captured;
  const factory CaptureState.urlInput({
    required String url,
    required String inputType,
  }) = UrlInput;
  const factory CaptureState.extracting({
    String? imagePath,
    String? url,
    String? inputType,
  }) = Extracting;
  const factory CaptureState.extracted({
    required ExtractionResult extraction,
    String? imagePath,
    String? url,
  }) = Extracted;
  const factory CaptureState.extractionFailed({
    required String error,
    String? imagePath,
    String? url,
    String? inputType,
  }) = ExtractionFailed;
  const factory CaptureState.offlineQueued({
    required String message,
  }) = OfflineQueued;
  const factory CaptureState.saving() = Saving;
  const factory CaptureState.saved({required String beanId}) = Saved;
  const factory CaptureState.saveFailed({
    required Bean bean,
    required ExtractionResult extraction,
    required String error,
    String? imagePath,
    String? url,
  }) = SaveFailed;
}
