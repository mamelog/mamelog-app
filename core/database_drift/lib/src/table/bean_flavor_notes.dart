import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_database_drift/src/table/flavor_descriptors.dart';
import 'package:drift/drift.dart';

@DataClassName('BeanFlavorNoteEntry')
class BeanFlavorNotes extends Table {
  TextColumn get beanId => text().references(Beans, #id)();
  TextColumn get flavorDescriptorId => text().references(FlavorDescriptors, #id)();

  @override
  Set<Column> get primaryKey => {beanId, flavorDescriptorId};
}
