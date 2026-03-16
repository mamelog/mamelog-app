import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_database_drift/src/table/drink_logs.dart';
import 'package:core_database_drift/src/table/users.dart';
import 'package:drift/drift.dart';

/// Table definition for tasting_notes (SCA Classic).
@DataClassName('TastingNoteEntry')
class TastingNotes extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(Users, #id)();
  TextColumn get beanId => text().references(Beans, #id)();
  TextColumn get drinkLogId => text().nullable().references(DrinkLogs, #id)();
  TextColumn get protocolVersion => text().withDefault(const Constant('classic'))();
  RealColumn get fragranceAroma => real().nullable()();
  RealColumn get flavor => real().nullable()();
  RealColumn get aftertaste => real().nullable()();
  RealColumn get acidity => real().nullable()();
  RealColumn get body => real().nullable()();
  RealColumn get balance => real().nullable()();
  RealColumn get uniformity => real().nullable()();
  RealColumn get cleanCup => real().nullable()();
  RealColumn get sweetness => real().nullable()();
  RealColumn get overall => real().nullable()();
  RealColumn get defects => real().withDefault(const Constant(0))();
  RealColumn get totalScore => real().nullable()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
