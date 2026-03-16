import 'package:core_database/dao.dart';
import 'package:core_database_drift/src/database/app_database.dart';
import 'package:core_database_drift/src/table/drink_logs.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/drink_log.dart';
import 'package:core_model/user.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'drink_log_dao_impl.g.dart';

@Injectable(as: DrinkLogDao)
@DriftAccessor(tables: [DrinkLogs])
class DrinkLogDaoImpl extends DatabaseAccessor<DriftAppDatabase>
    with _$DrinkLogDaoImplMixin
    implements DrinkLogDao {
  DrinkLogDaoImpl(super.attachedDatabase);

  @override
  Stream<List<DrinkLog>> watchAllDrinkLogs() {
    return (select(drinkLogs)
          ..where((t) => t.deletedAt.isNull())
          ..orderBy([(t) => OrderingTerm.desc(t.drunkAt)]))
        .watch()
        .map((rows) => rows.map(_mapToModel).toList());
  }

  @override
  Future<DrinkLog?> getDrinkLogById(DrinkLogId id) async {
    final row = await (select(drinkLogs)..where((t) => t.id.equals(id.value))).getSingleOrNull();
    return row != null ? _mapToModel(row) : null;
  }

  @override
  Future<void> insertDrinkLog(DrinkLog log) {
    return into(drinkLogs).insert(_mapToEntry(log));
  }

  @override
  Future<void> updateDrinkLog(DrinkLog log) {
    return update(drinkLogs).replace(_mapToEntry(log));
  }

  @override
  Future<void> deleteDrinkLogById(DrinkLogId id) {
    return (update(drinkLogs)..where((t) => t.id.equals(id.value))).write(
      DrinkLogsCompanion(deletedAt: Value(DateTime.now())),
    );
  }

  DrinkLog _mapToModel(DrinkLogEntry entry) {
    return DrinkLog(
      id: DrinkLogId(entry.id),
      userId: UserId(entry.userId),
      beanId: BeanId(entry.beanId),
      drunkAt: entry.drunkAt,
      createdAt: entry.createdAt,
      updatedAt: entry.updatedAt,
      rating: entry.rating,
      memo: entry.memo,
      acidity: entry.acidity,
      aroma: entry.aroma,
      sweetness: entry.sweetness,
      bitterness: entry.bitterness,
      body: entry.body,
    );
  }

  DrinkLogEntry _mapToEntry(DrinkLog log) {
    return DrinkLogEntry(
      id: log.id.value,
      userId: log.userId.value,
      beanId: log.beanId.value,
      drunkAt: log.drunkAt,
      createdAt: log.createdAt,
      updatedAt: log.updatedAt,
      rating: log.rating,
      memo: log.memo,
      acidity: log.acidity,
      aroma: log.aroma,
      sweetness: log.sweetness,
      bitterness: log.bitterness,
      body: log.body,
    );
  }
}
