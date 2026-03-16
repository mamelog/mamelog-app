import 'package:drift/drift.dart';

@DataClassName('VarietyEntry')
class Varieties extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().unique()();
  TextColumn get nameJa => text().nullable()();
  TextColumn get species => text().withDefault(const Constant('arabica'))();
  TextColumn get description => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
