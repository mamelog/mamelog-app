import 'dart:io';

import 'package:core_database/dao.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/pending_extraction.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: PendingExtractionRepository)
class PendingExtractionRepositoryImpl implements PendingExtractionRepository {
  PendingExtractionRepositoryImpl(this._dao);

  final PendingExtractionDao _dao;
  static const _uuid = Uuid();
  static final _log = Logger('PendingExtractionRepositoryImpl');

  @override
  Stream<List<PendingExtraction>> watchPending() => _dao.watchPending();

  @override
  Future<List<PendingExtraction>> getPending() => _dao.getPending();

  @override
  Future<void> enqueue(String imagePath) {
    final extraction = PendingExtraction(
      id: _uuid.v7(),
      imagePath: imagePath,
      createdAt: DateTime.now(),
    );
    return _dao.insert(extraction);
  }

  @override
  Future<void> updateStatus(
    String id,
    PendingExtractionStatus status, {
    String? errorMessage,
    int? retryCount,
  }) {
    return _dao.updateStatus(
      id,
      status,
      errorMessage: errorMessage,
      retryCount: retryCount,
    );
  }

  @override
  Future<void> remove(String id) => _dao.deleteById(id);

  @override
  Future<void> cleanupOlderThan(Duration maxAge) async {
    final cutoff = DateTime.now().subtract(maxAge);

    // Get ALL old entries (including completed/failed) to delete their image files
    final oldEntries = await _dao.getAllOlderThan(cutoff);
    for (final item in oldEntries) {
      final file = File(item.imagePath);
      if (file.existsSync()) {
        await file.delete().catchError((Object e) {
          _log.warning('Failed to delete image: $e');
          return file;
        });
      }
    }

    await _dao.deleteOlderThan(cutoff);
  }
}
