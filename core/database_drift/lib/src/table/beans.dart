import 'package:core_database_drift/src/converter/enum_converters.dart';
import 'package:core_database_drift/src/table/roasters.dart';
import 'package:core_database_drift/src/table/users.dart';
import 'package:drift/drift.dart';

@DataClassName('BeanEntry')
class Beans extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().references(Users, #id)();
  TextColumn get roasterId => text().nullable().references(Roasters, #id)();
  TextColumn get name => text()();
  TextColumn get roastLevel => text().nullable().map(const RoastLevelConverter())();
  TextColumn get beanType => text().nullable().map(const BeanTypeConverter())();
  TextColumn get roastDate => text().nullable()(); // YYYY-MM-DD
  TextColumn get purchaseDate => text().nullable()(); // YYYY-MM-DD
  IntColumn get purchasePrice => integer().nullable()();
  IntColumn get weightG => integer().nullable()();
  BoolColumn get isDecaf => boolean().withDefault(const Constant(false))();
  TextColumn get description => text().nullable()();
  TextColumn get sourceUrl => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
