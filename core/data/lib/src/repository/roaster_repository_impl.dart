import 'package:core_common/result.dart';
import 'package:core_database/dao.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/roaster.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RoasterRepository)
class RoasterRepositoryImpl implements RoasterRepository {
  RoasterRepositoryImpl(this._roasterDao);

  final RoasterDao _roasterDao;

  @override
  Stream<List<Roaster>> watchAll() => _roasterDao.watchAllRoasters();

  @override
  Future<Result<Roaster>> getById(RoasterId id) async {
    try {
      final roaster = await _roasterDao.getRoasterById(id);
      if (roaster == null) {
        return Result.error(Exception('Roaster not found: $id'));
      }
      return Result.ok(roaster);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<RoasterId>> create(Roaster roaster) async {
    try {
      await _roasterDao.insertRoaster(roaster);
      return Result.ok(roaster.id);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> update(Roaster roaster) async {
    try {
      await _roasterDao.updateRoaster(roaster);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> delete(RoasterId id) async {
    try {
      await _roasterDao.deleteRoasterById(id);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }
}
