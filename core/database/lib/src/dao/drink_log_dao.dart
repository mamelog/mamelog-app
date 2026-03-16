import 'package:core_model/drink_log.dart';

/// DAO interface for DrinkLog table.
abstract class DrinkLogDao {
  Stream<List<DrinkLog>> watchAllDrinkLogs();
  Future<DrinkLog?> getDrinkLogById(DrinkLogId id);
  Future<void> insertDrinkLog(DrinkLog log);
  Future<void> updateDrinkLog(DrinkLog log);
  Future<void> deleteDrinkLogById(DrinkLogId id);
}
