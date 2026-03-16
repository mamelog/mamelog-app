import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_database_drift/src/table/countries.dart';
import 'package:core_database_drift/src/table/processing_methods.dart';
import 'package:core_database_drift/src/table/varieties.dart';
import 'package:drift/drift.dart';

@DataClassName('BeanOriginEntry')
class BeanOrigins extends Table {
  TextColumn get id => text()();
  TextColumn get beanId => text().references(Beans, #id)();
  TextColumn get countryId => text().nullable().references(Countries, #id)();
  TextColumn get region => text().nullable()();
  TextColumn get farm => text().nullable()();
  TextColumn get farmer => text().nullable()();
  TextColumn get varietyId => text().nullable().references(Varieties, #id)();
  TextColumn get processingMethodId => text().nullable().references(ProcessingMethods, #id)();
  TextColumn get elevation => text().nullable()();
  TextColumn get harvestTime => text().nullable()();
  IntColumn get percentage => integer().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
