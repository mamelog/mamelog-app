import 'package:core_common/result.dart';
import 'package:core_database/dao.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/bean.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BeanRepository)
class BeanRepositoryImpl implements BeanRepository {
  BeanRepositoryImpl(this._beanDao);

  final BeanDao _beanDao;

  @override
  Stream<List<Bean>> watchAll() => _beanDao.watchAllBeans();

  @override
  Future<Result<Bean>> getById(BeanId id) async {
    try {
      final bean = await _beanDao.getBeanById(id);
      if (bean == null) {
        return Result.error(Exception('Bean not found: $id'));
      }
      return Result.ok(bean);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<BeanId>> create(Bean bean) async {
    try {
      await _beanDao.insertBeanFull(bean);
      // TODO(ai): Sync with remote
      return Result.ok(bean.id);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> update(Bean bean) async {
    try {
      await _beanDao.updateBean(bean);
      // TODO(ai): Sync with remote
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<void>> delete(BeanId id) async {
    try {
      await _beanDao.deleteBeanById(id);
      // TODO(ai): Sync with remote
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }
}
