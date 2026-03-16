import 'package:drift/drift.dart';

@DataClassName('ProcessingMethodEntry')
class ProcessingMethods extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().unique()();
  TextColumn get nameJa => text().nullable()();
  TextColumn get aliases => text().nullable()(); // JSON array string
  TextColumn get description => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
