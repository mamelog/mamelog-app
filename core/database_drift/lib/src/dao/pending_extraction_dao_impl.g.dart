// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_extraction_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$PendingExtractionDaoImplMixin on DatabaseAccessor<DriftAppDatabase> {
  $PendingExtractionsTable get pendingExtractions =>
      attachedDatabase.pendingExtractions;
  PendingExtractionDaoImplManager get managers =>
      PendingExtractionDaoImplManager(this);
}

class PendingExtractionDaoImplManager {
  final _$PendingExtractionDaoImplMixin _db;
  PendingExtractionDaoImplManager(this._db);
  $$PendingExtractionsTableTableManager get pendingExtractions =>
      $$PendingExtractionsTableTableManager(
        _db.attachedDatabase,
        _db.pendingExtractions,
      );
}
