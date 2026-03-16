import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_database_drift/src/table/users.dart';
import 'package:drift/drift.dart';

/// Table definition for drink_logs.
@DataClassName('DrinkLogEntry')
class DrinkLogs extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(Users, #id)();
  TextColumn get beanId => text().references(Beans, #id)();
  DateTimeColumn get drunkAt => dateTime()();
  IntColumn get rating => integer().nullable()(); // 1-5
  TextColumn get memo => text().nullable()();
  IntColumn get acidity => integer().nullable()(); // 0-100
  IntColumn get aroma => integer().nullable()(); // 0-100
  IntColumn get sweetness => integer().nullable()(); // 0-100
  IntColumn get bitterness => integer().nullable()(); // 0-100
  IntColumn get body => integer().nullable()(); // 0-100
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
