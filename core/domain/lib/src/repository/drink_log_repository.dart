import 'package:core_common/result.dart';
import 'package:core_model/drink_log.dart';

/// Repository interface for managing coffee drink logs.
abstract class DrinkLogRepository {
  Stream<List<DrinkLog>> watchAll();
  Future<Result<DrinkLog>> getById(DrinkLogId id);
  Future<Result<DrinkLogId>> create(DrinkLog log);
  Future<Result<void>> update(DrinkLog log);
  Future<Result<void>> delete(DrinkLogId id);
}
