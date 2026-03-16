import 'package:core_model/pending_extraction.dart';

/// Repository for managing the offline extraction queue.
abstract class PendingExtractionRepository {
  Stream<List<PendingExtraction>> watchPending();
  Future<List<PendingExtraction>> getPending();
  Future<void> enqueue(String imagePath);
  Future<void> updateStatus(
    String id,
    PendingExtractionStatus status, {
    String? errorMessage,
    int? retryCount,
  });
  Future<void> remove(String id);
  Future<void> cleanupOlderThan(Duration maxAge);
}
