import 'package:core_model/bean.dart';

/// DAO interface for Bean table.
abstract class BeanDao {
  Stream<List<Bean>> watchAllBeans();
  Future<Bean?> getBeanById(BeanId id);
  Future<void> insertBean(Bean bean);

  /// Inserts a bean with its origins and flavor notes in a transaction.
  Future<void> insertBeanFull(Bean bean);

  Future<void> updateBean(Bean bean);
  Future<void> deleteBeanById(BeanId id);
}
