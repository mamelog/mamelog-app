import 'package:core_model/pending_extraction.dart';

/// DAO interface for the pending extraction queue.
abstract class PendingExtractionDao {
  Stream<List<PendingExtraction>> watchPending();
  Future<List<PendingExtraction>> getPending();
  Future<void> insert(PendingExtraction extraction);
  Future<void> updateStatus(
    String id,
    PendingExtractionStatus status, {
    String? errorMessage,
    int? retryCount,
  });
  Future<List<PendingExtraction>> getAllOlderThan(DateTime cutoff);
  Future<void> deleteById(String id);
  Future<void> deleteOlderThan(DateTime cutoff);
}
