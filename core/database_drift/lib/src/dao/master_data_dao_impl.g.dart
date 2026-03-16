// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$MasterDataDaoImplMixin on DatabaseAccessor<DriftAppDatabase> {
  $CountriesTable get countries => attachedDatabase.countries;
  $VarietiesTable get varieties => attachedDatabase.varieties;
  $ProcessingMethodsTable get processingMethods =>
      attachedDatabase.processingMethods;
  $FlavorDescriptorsTable get flavorDescriptors =>
      attachedDatabase.flavorDescriptors;
  MasterDataDaoImplManager get managers => MasterDataDaoImplManager(this);
}

class MasterDataDaoImplManager {
  final _$MasterDataDaoImplMixin _db;
  MasterDataDaoImplManager(this._db);
  $$CountriesTableTableManager get countries =>
      $$CountriesTableTableManager(_db.attachedDatabase, _db.countries);
  $$VarietiesTableTableManager get varieties =>
      $$VarietiesTableTableManager(_db.attachedDatabase, _db.varieties);
  $$ProcessingMethodsTableTableManager get processingMethods =>
      $$ProcessingMethodsTableTableManager(
        _db.attachedDatabase,
        _db.processingMethods,
      );
  $$FlavorDescriptorsTableTableManager get flavorDescriptors =>
      $$FlavorDescriptorsTableTableManager(
        _db.attachedDatabase,
        _db.flavorDescriptors,
      );
}
