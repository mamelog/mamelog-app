import 'package:drift/drift.dart';

@DataClassName('FlavorDescriptorEntry')
class FlavorDescriptors extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get nameJa => text().nullable()();
  TextColumn get parentId => text().nullable().references(FlavorDescriptors, #id)();
  IntColumn get tier => integer()(); // 1, 2, 3
  TextColumn get scaReference => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
