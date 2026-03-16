// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_log_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$DrinkLogDaoImplMixin on DatabaseAccessor<DriftAppDatabase> {
  $UsersTable get users => attachedDatabase.users;
  $RoastersTable get roasters => attachedDatabase.roasters;
  $BeansTable get beans => attachedDatabase.beans;
  $DrinkLogsTable get drinkLogs => attachedDatabase.drinkLogs;
  DrinkLogDaoImplManager get managers => DrinkLogDaoImplManager(this);
}

class DrinkLogDaoImplManager {
  final _$DrinkLogDaoImplMixin _db;
  DrinkLogDaoImplManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db.attachedDatabase, _db.users);
  $$RoastersTableTableManager get roasters =>
      $$RoastersTableTableManager(_db.attachedDatabase, _db.roasters);
  $$BeansTableTableManager get beans =>
      $$BeansTableTableManager(_db.attachedDatabase, _db.beans);
  $$DrinkLogsTableTableManager get drinkLogs =>
      $$DrinkLogsTableTableManager(_db.attachedDatabase, _db.drinkLogs);
}
