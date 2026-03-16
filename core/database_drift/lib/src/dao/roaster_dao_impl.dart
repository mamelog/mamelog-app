import 'package:core_database/dao.dart';
import 'package:core_database_drift/src/database/app_database.dart';
import 'package:core_database_drift/src/table/roasters.dart';
import 'package:core_model/roaster.dart';
import 'package:core_model/user.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'roaster_dao_impl.g.dart';

@Injectable(as: RoasterDao)
@DriftAccessor(tables: [Roasters])
class RoasterDaoImpl extends DatabaseAccessor<DriftAppDatabase>
    with _$RoasterDaoImplMixin
    implements RoasterDao {
  RoasterDaoImpl(super.attachedDatabase);

  @override
  Stream<List<Roaster>> watchAllRoasters() {
    return (select(
      roasters,
    )..where((t) => t.deletedAt.isNull())).watch().map((rows) => rows.map(_mapToRoaster).toList());
  }

  @override
  Future<Roaster?> getRoasterById(RoasterId id) {
    return (select(roasters)..where((t) => t.id.equals(id.value))).getSingleOrNull().then(
      (row) => row != null ? _mapToRoaster(row) : null,
    );
  }

  @override
  Future<void> insertRoaster(Roaster roaster) {
    return into(roasters).insert(_mapToEntry(roaster));
  }

  @override
  Future<void> updateRoaster(Roaster roaster) {
    return update(roasters).replace(_mapToEntry(roaster));
  }

  @override
  Future<void> deleteRoasterById(RoasterId id) {
    return (update(roasters)..where((t) => t.id.equals(id.value))).write(
      RoastersCompanion(deletedAt: Value(DateTime.now())),
    );
  }

  Roaster _mapToRoaster(RoasterEntry entry) {
    return Roaster(
      id: RoasterId(entry.id),
      userId: UserId(entry.userId),
      name: entry.name,
      createdAt: entry.createdAt,
      updatedAt: entry.updatedAt,
      nameReading: entry.nameReading,
      location: entry.location,
      websiteUrl: entry.websiteUrl,
      description: entry.description,
    );
  }

  RoasterEntry _mapToEntry(Roaster roaster) {
    return RoasterEntry(
      id: roaster.id.value,
      name: roaster.name,
      createdAt: roaster.createdAt,
      updatedAt: roaster.updatedAt,
      userId: roaster.userId.value,
      nameReading: roaster.nameReading,
      location: roaster.location,
      websiteUrl: roaster.websiteUrl,
      description: roaster.description,
    );
  }
}
