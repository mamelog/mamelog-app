// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roaster_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$RoasterDaoImplMixin on DatabaseAccessor<DriftAppDatabase> {
  $UsersTable get users => attachedDatabase.users;
  $RoastersTable get roasters => attachedDatabase.roasters;
  RoasterDaoImplManager get managers => RoasterDaoImplManager(this);
}

class RoasterDaoImplManager {
  final _$RoasterDaoImplMixin _db;
  RoasterDaoImplManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db.attachedDatabase, _db.users);
  $$RoastersTableTableManager get roasters =>
      $$RoastersTableTableManager(_db.attachedDatabase, _db.roasters);
}
