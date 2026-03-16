import 'package:core_model/roaster.dart';

/// DAO interface for Roaster table.
abstract class RoasterDao {
  Stream<List<Roaster>> watchAllRoasters();
  Future<Roaster?> getRoasterById(RoasterId id);
  Future<void> insertRoaster(Roaster roaster);
  Future<void> updateRoaster(Roaster roaster);
  Future<void> deleteRoasterById(RoasterId id);
}
