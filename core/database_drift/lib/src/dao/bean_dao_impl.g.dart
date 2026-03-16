// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bean_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$BeanDaoImplMixin on DatabaseAccessor<DriftAppDatabase> {
  $UsersTable get users => attachedDatabase.users;
  $RoastersTable get roasters => attachedDatabase.roasters;
  $BeansTable get beans => attachedDatabase.beans;
  $CountriesTable get countries => attachedDatabase.countries;
  $VarietiesTable get varieties => attachedDatabase.varieties;
  $ProcessingMethodsTable get processingMethods =>
      attachedDatabase.processingMethods;
  $BeanOriginsTable get beanOrigins => attachedDatabase.beanOrigins;
  $FlavorDescriptorsTable get flavorDescriptors =>
      attachedDatabase.flavorDescriptors;
  $BeanFlavorNotesTable get beanFlavorNotes => attachedDatabase.beanFlavorNotes;
  BeanDaoImplManager get managers => BeanDaoImplManager(this);
}

class BeanDaoImplManager {
  final _$BeanDaoImplMixin _db;
  BeanDaoImplManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db.attachedDatabase, _db.users);
  $$RoastersTableTableManager get roasters =>
      $$RoastersTableTableManager(_db.attachedDatabase, _db.roasters);
  $$BeansTableTableManager get beans =>
      $$BeansTableTableManager(_db.attachedDatabase, _db.beans);
  $$CountriesTableTableManager get countries =>
      $$CountriesTableTableManager(_db.attachedDatabase, _db.countries);
  $$VarietiesTableTableManager get varieties =>
      $$VarietiesTableTableManager(_db.attachedDatabase, _db.varieties);
  $$ProcessingMethodsTableTableManager get processingMethods =>
      $$ProcessingMethodsTableTableManager(
        _db.attachedDatabase,
        _db.processingMethods,
      );
  $$BeanOriginsTableTableManager get beanOrigins =>
      $$BeanOriginsTableTableManager(_db.attachedDatabase, _db.beanOrigins);
  $$FlavorDescriptorsTableTableManager get flavorDescriptors =>
      $$FlavorDescriptorsTableTableManager(
        _db.attachedDatabase,
        _db.flavorDescriptors,
      );
  $$BeanFlavorNotesTableTableManager get beanFlavorNotes =>
      $$BeanFlavorNotesTableTableManager(
        _db.attachedDatabase,
        _db.beanFlavorNotes,
      );
}
