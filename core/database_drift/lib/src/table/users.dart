import 'package:drift/drift.dart';

@DataClassName('UserEntry')
class Users extends Table {
  TextColumn get id => text()();
  TextColumn get firebaseUid => text().unique()();
  TextColumn get displayName => text().nullable()();
  TextColumn get avatarUrl => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get preferences => text().nullable()(); // JSON string
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
