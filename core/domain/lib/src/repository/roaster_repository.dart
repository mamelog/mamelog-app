import 'package:core_common/result.dart';
import 'package:core_model/roaster.dart';

/// Repository interface for managing coffee roasters.
abstract class RoasterRepository {
  Stream<List<Roaster>> watchAll();
  Future<Result<Roaster>> getById(RoasterId id);
  Future<Result<RoasterId>> create(Roaster roaster);
  Future<Result<void>> update(Roaster roaster);
  Future<Result<void>> delete(RoasterId id);
}
