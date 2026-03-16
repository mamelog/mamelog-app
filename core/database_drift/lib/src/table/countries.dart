import 'package:drift/drift.dart';

@DataClassName('CountryEntry')
class Countries extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().unique()();
  TextColumn get nameEn => text()();
  TextColumn get isoAlpha2 => text().unique()();
  TextColumn get region => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
