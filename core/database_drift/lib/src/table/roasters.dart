import 'package:core_database_drift/src/table/users.dart';
import 'package:drift/drift.dart';

@DataClassName('RoasterEntry')
class Roasters extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(Users, #id)();
  TextColumn get name => text()();
  TextColumn get nameReading => text().nullable()();
  TextColumn get location => text().nullable()();
  TextColumn get websiteUrl => text().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
