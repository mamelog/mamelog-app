import 'package:core_database/dao.dart';
import 'package:core_database_drift/src/database/app_database.dart';
import 'package:core_database_drift/src/table/pending_extractions.dart';
import 'package:core_model/pending_extraction.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'pending_extraction_dao_impl.g.dart';

@Injectable(as: PendingExtractionDao)
@DriftAccessor(tables: [PendingExtractions])
class PendingExtractionDaoImpl extends DatabaseAccessor<DriftAppDatabase>
    with _$PendingExtractionDaoImplMixin
    implements PendingExtractionDao {
  PendingExtractionDaoImpl(super.attachedDatabase);

  @override
  Stream<List<PendingExtraction>> watchPending() {
    final query = select(pendingExtractions)
      ..where(
        (t) => t.status.isIn([
          PendingExtractionStatus.pending.name,
          PendingExtractionStatus.processing.name,
        ]),
      )
      ..orderBy([(t) => OrderingTerm.asc(t.createdAt)]);

    return query.watch().map(
      (rows) => rows.map(_mapToModel).toList(),
    );
  }

  @override
  Future<List<PendingExtraction>> getPending() {
    final query = select(pendingExtractions)
      ..where(
        (t) => t.status.isIn([
          PendingExtractionStatus.pending.name,
          PendingExtractionStatus.processing.name,
        ]),
      )
      ..orderBy([(t) => OrderingTerm.asc(t.createdAt)]);

    return query.get().then(
      (rows) => rows.map(_mapToModel).toList(),
    );
  }

  @override
  Future<void> insert(PendingExtraction extraction) {
    return into(pendingExtractions).insert(
      PendingExtractionEntry(
        id: extraction.id,
        imagePath: extraction.imagePath,
        createdAt: extraction.createdAt,
        status: extraction.status.name,
        retryCount: extraction.retryCount,
        errorMessage: extraction.errorMessage,
      ),
    );
  }

  @override
  Future<void> updateStatus(
    String id,
    PendingExtractionStatus status, {
    String? errorMessage,
    int? retryCount,
  }) {
    return (update(pendingExtractions)..where((t) => t.id.equals(id))).write(
      PendingExtractionsCompanion(
        status: Value(status.name),
        errorMessage: Value(errorMessage),
        retryCount: retryCount != null ? Value(retryCount) : const Value.absent(),
      ),
    );
  }

  @override
  Future<List<PendingExtraction>> getAllOlderThan(DateTime cutoff) {
    final query = select(pendingExtractions)
      ..where((t) => t.createdAt.isSmallerThanValue(cutoff))
      ..orderBy([(t) => OrderingTerm.asc(t.createdAt)]);

    return query.get().then(
      (rows) => rows.map(_mapToModel).toList(),
    );
  }

  @override
  Future<void> deleteById(String id) {
    return (delete(pendingExtractions)..where((t) => t.id.equals(id))).go();
  }

  @override
  Future<void> deleteOlderThan(DateTime cutoff) {
    return (delete(pendingExtractions)..where((t) => t.createdAt.isSmallerThanValue(cutoff))).go();
  }

  PendingExtraction _mapToModel(PendingExtractionEntry entry) {
    return PendingExtraction(
      id: entry.id,
      imagePath: entry.imagePath,
      createdAt: entry.createdAt,
      status: PendingExtractionStatus.values.byName(entry.status),
      retryCount: entry.retryCount,
      errorMessage: entry.errorMessage,
    );
  }
}
