import 'package:core_common/result.dart';
import 'package:core_model/bean.dart';

/// Repository interface for managing coffee beans.
abstract class BeanRepository {
  /// Watches all non-deleted coffee beans.
  Stream<List<Bean>> watchAll();

  /// Gets a specific coffee bean by its ID.
  Future<Result<Bean>> getById(BeanId id);

  /// Creates a new coffee bean.
  Future<Result<BeanId>> create(Bean bean);

  /// Updates an existing coffee bean.
  Future<Result<void>> update(Bean bean);

  /// Deletes a coffee bean by its ID (soft delete).
  Future<Result<void>> delete(BeanId id);
}
