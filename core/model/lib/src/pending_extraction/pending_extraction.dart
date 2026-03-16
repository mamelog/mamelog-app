import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_extraction.freezed.dart';

/// Status of a pending extraction in the offline queue.
enum PendingExtractionStatus {
  pending,
  processing,
  completed,
  failed,
}

/// Represents an image queued for extraction when offline.
@freezed
abstract class PendingExtraction with _$PendingExtraction {
  const factory PendingExtraction({
    required String id,
    required String imagePath,
    required DateTime createdAt,
    @Default(PendingExtractionStatus.pending) PendingExtractionStatus status,
    @Default(0) int retryCount,
    String? errorMessage,
  }) = _PendingExtraction;
}
