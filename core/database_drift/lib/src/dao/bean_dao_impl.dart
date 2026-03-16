import 'package:core_database/dao.dart';
import 'package:core_database_drift/src/database/app_database.dart';
import 'package:core_database_drift/src/table/bean_flavor_notes.dart';
import 'package:core_database_drift/src/table/bean_origins.dart';
import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/master.dart';
import 'package:core_model/roaster.dart';
import 'package:core_model/user.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'bean_dao_impl.g.dart';

@Injectable(as: BeanDao)
@DriftAccessor(tables: [Beans, BeanOrigins, BeanFlavorNotes])
class BeanDaoImpl extends DatabaseAccessor<DriftAppDatabase>
    with _$BeanDaoImplMixin
    implements BeanDao {
  BeanDaoImpl(super.attachedDatabase);

  @override
  Stream<List<Bean>> watchAllBeans() {
    final beansQuery = select(beans)..where((t) => t.deletedAt.isNull());

    return beansQuery.watch().asyncMap((beanRows) async {
      if (beanRows.isEmpty) return <Bean>[];

      final beanIds = beanRows.map((b) => b.id).toList();

      final originsRows = await (select(beanOrigins)..where((t) => t.beanId.isIn(beanIds))).get();
      final flavorNotesRows = await (select(
        beanFlavorNotes,
      )..where((t) => t.beanId.isIn(beanIds))).get();

      final originsByBeanId = <String, List<BeanOriginEntry>>{};
      for (final origin in originsRows) {
        originsByBeanId.putIfAbsent(origin.beanId, () => []).add(origin);
      }

      final flavorNotesByBeanId = <String, List<BeanFlavorNoteEntry>>{};
      for (final note in flavorNotesRows) {
        flavorNotesByBeanId.putIfAbsent(note.beanId, () => []).add(note);
      }

      return beanRows
          .map(
            (entry) => _mapToBean(
              entry,
              origins: originsByBeanId[entry.id] ?? const [],
              flavorNotes: flavorNotesByBeanId[entry.id] ?? const [],
            ),
          )
          .toList();
    });
  }

  @override
  Future<Bean?> getBeanById(BeanId id) async {
    final beanRow = await (select(beans)..where((t) => t.id.equals(id.value))).getSingleOrNull();
    if (beanRow == null) return null;

    final originsRows = await (select(beanOrigins)..where((t) => t.beanId.equals(id.value))).get();
    final flavorNotesRows = await (select(
      beanFlavorNotes,
    )..where((t) => t.beanId.equals(id.value))).get();

    return _mapToBean(
      beanRow,
      origins: originsRows,
      flavorNotes: flavorNotesRows,
    );
  }

  @override
  Future<void> insertBean(Bean bean) {
    return into(beans).insert(_mapToEntry(bean));
  }

  @override
  Future<void> insertBeanFull(Bean bean) async {
    await transaction(() async {
      await into(beans).insert(_mapToEntry(bean));

      for (var i = 0; i < bean.origins.length; i++) {
        final origin = bean.origins[i];
        await into(beanOrigins).insert(
          BeanOriginEntry(
            id: origin.id,
            beanId: bean.id.value,
            countryId: origin.countryId?.value,
            region: origin.region,
            farm: origin.farm,
            varietyId: origin.varietyId?.value,
            processingMethodId: origin.processingMethodId?.value,
            elevation: origin.elevation,
            percentage: origin.percentage,
            sortOrder: i,
          ),
        );
      }

      for (final flavorId in bean.flavorNoteIds) {
        await into(beanFlavorNotes).insert(
          BeanFlavorNoteEntry(
            beanId: bean.id.value,
            flavorDescriptorId: flavorId.value,
          ),
        );
      }
    });
  }

  @override
  Future<void> updateBean(Bean bean) {
    return update(beans).replace(_mapToEntry(bean));
  }

  @override
  Future<void> deleteBeanById(BeanId id) {
    return (update(
      beans,
    )..where((t) => t.id.equals(id.value))).write(BeansCompanion(deletedAt: Value(DateTime.now())));
  }

  Bean _mapToBean(
    BeanEntry entry, {
    List<BeanOriginEntry> origins = const [],
    List<BeanFlavorNoteEntry> flavorNotes = const [],
  }) {
    return Bean(
      id: BeanId(entry.id),
      userId: UserId(entry.userId),
      name: entry.name,
      createdAt: entry.createdAt,
      updatedAt: entry.updatedAt,
      roasterId: entry.roasterId != null ? RoasterId(entry.roasterId!) : null,
      roastLevel: entry.roastLevel,
      beanType: entry.beanType,
      roastDate: entry.roastDate,
      purchaseDate: entry.purchaseDate,
      purchasePrice: entry.purchasePrice,
      weightG: entry.weightG,
      isDecaf: entry.isDecaf,
      description: entry.description,
      origins: origins
          .map(
            (o) => BeanOrigin(
              id: o.id,
              countryId: o.countryId != null ? CountryId(o.countryId!) : null,
              region: o.region,
              farm: o.farm,
              varietyId: o.varietyId != null ? VarietyId(o.varietyId!) : null,
              processingMethodId: o.processingMethodId != null
                  ? ProcessingMethodId(o.processingMethodId!)
                  : null,
              elevation: o.elevation,
              percentage: o.percentage,
            ),
          )
          .toList(),
      flavorNoteIds: flavorNotes.map((f) => FlavorDescriptorId(f.flavorDescriptorId)).toList(),
    );
  }

  BeanEntry _mapToEntry(Bean bean) {
    return BeanEntry(
      id: bean.id.value,
      userId: bean.userId.value,
      name: bean.name,
      createdAt: bean.createdAt,
      updatedAt: bean.updatedAt,
      roasterId: bean.roasterId?.value,
      roastLevel: bean.roastLevel,
      beanType: bean.beanType,
      roastDate: bean.roastDate,
      purchaseDate: bean.purchaseDate,
      purchasePrice: bean.purchasePrice,
      weightG: bean.weightG,
      isDecaf: bean.isDecaf,
      description: bean.description,
    );
  }
}
