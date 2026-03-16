import 'package:core_common/result.dart';
import 'package:core_database/dao.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/drink_log.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DrinkLogRepository)
class DrinkLogRepositoryImpl implements DrinkLogRepository {
  DrinkLogRepositoryImpl(this._dao);

  final DrinkLogDao _dao;

  @override
  Stream<List<DrinkLog>> watchAll() => _dao.watchAllDrinkLogs();

  @override
  Future<Result<DrinkLog>> getById(DrinkLogId id) async {
    try {
      final log = await _dao.getDrinkLogById(id);
      if (log == null) {
        return Result.error(Exception('Drink log not found: $id'));
      }
      return Result.ok(log);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<DrinkLogId>> create(DrinkLog log) async {
    try {
      await _dao.insertDrinkLog(log);
      return Result.ok(log.id);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> update(DrinkLog log) async {
    try {
      await _dao.updateDrinkLog(log);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> delete(DrinkLogId id) async {
    try {
      await _dao.deleteDrinkLogById(id);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }
}
