import 'package:drift/drift.dart';

@DataClassName('PendingExtractionEntry')
class PendingExtractions extends Table {
  TextColumn get id => text()();
  TextColumn get imagePath => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
  TextColumn get errorMessage => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
