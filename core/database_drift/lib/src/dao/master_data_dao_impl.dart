import 'dart:convert';

import 'package:core_database/dao.dart';
import 'package:core_database_drift/src/database/app_database.dart';
import 'package:core_database_drift/src/table/countries.dart';
import 'package:core_database_drift/src/table/flavor_descriptors.dart';
import 'package:core_database_drift/src/table/processing_methods.dart';
import 'package:core_database_drift/src/table/varieties.dart';
import 'package:core_model/master.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

part 'master_data_dao_impl.g.dart';

@Injectable(as: MasterDataDao)
@DriftAccessor(
  tables: [
    Countries,
    Varieties,
    ProcessingMethods,
    FlavorDescriptors,
  ],
)
class MasterDataDaoImpl extends DatabaseAccessor<DriftAppDatabase>
    with _$MasterDataDaoImplMixin
    implements MasterDataDao {
  MasterDataDaoImpl(super.attachedDatabase);

  @override
  Future<void> upsertCountries(List<Country> entries) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        countries,
        entries
            .map(
              (e) => CountryEntry(
                id: e.id.value,
                name: e.name,
                nameEn: e.nameEn,
                isoAlpha2: e.isoAlpha2,
                region: e.region,
                sortOrder: e.sortOrder,
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Future<void> upsertVarieties(List<Variety> entries) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        varieties,
        entries
            .map(
              (e) => VarietyEntry(
                id: e.id.value,
                name: e.name,
                nameJa: e.nameJa,
                species: e.species,
                description: e.description,
                sortOrder: e.sortOrder,
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Future<void> upsertProcessingMethods(List<ProcessingMethod> entries) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        processingMethods,
        entries
            .map(
              (e) => ProcessingMethodEntry(
                id: e.id.value,
                name: e.name,
                nameJa: e.nameJa,
                aliases: jsonEncode(e.aliases),
                description: e.description,
                sortOrder: e.sortOrder,
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Future<void> upsertFlavorDescriptors(List<FlavorDescriptor> entries) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        flavorDescriptors,
        entries
            .map(
              (e) => FlavorDescriptorEntry(
                id: e.id.value,
                name: e.name,
                nameJa: e.nameJa,
                parentId: e.parentId?.value,
                tier: e.tier,
                scaReference: e.scaReference,
                sortOrder: e.sortOrder,
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Stream<List<Country>> watchCountries() {
    return (select(countries)..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).watch().map(
      (rows) => rows
          .map(
            (e) => Country(
              id: CountryId(e.id),
              name: e.name,
              nameEn: e.nameEn,
              isoAlpha2: e.isoAlpha2,
              region: e.region,
              sortOrder: e.sortOrder,
            ),
          )
          .toList(),
    );
  }

  @override
  Stream<List<Variety>> watchVarieties() {
    return (select(varieties)..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).watch().map(
      (rows) => rows
          .map(
            (e) => Variety(
              id: VarietyId(e.id),
              name: e.name,
              nameJa: e.nameJa,
              species: e.species,
              description: e.description,
              sortOrder: e.sortOrder,
            ),
          )
          .toList(),
    );
  }

  @override
  Stream<List<ProcessingMethod>> watchProcessingMethods() {
    return (select(
      processingMethods,
    )..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).watch().map(
      (rows) => rows
          .map(
            (e) => ProcessingMethod(
              id: ProcessingMethodId(e.id),
              name: e.name,
              nameJa: e.nameJa,
              aliases: _decodeStringList(e.aliases),
              description: e.description,
              sortOrder: e.sortOrder,
            ),
          )
          .toList(),
    );
  }

  @override
  Stream<List<FlavorDescriptor>> watchFlavorDescriptors() {
    return (select(
      flavorDescriptors,
    )..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).watch().map(
      (rows) => rows
          .map(
            (e) => FlavorDescriptor(
              id: FlavorDescriptorId(e.id),
              name: e.name,
              nameJa: e.nameJa,
              parentId: e.parentId != null ? FlavorDescriptorId(e.parentId!) : null,
              tier: e.tier,
              scaReference: e.scaReference,
              sortOrder: e.sortOrder,
            ),
          )
          .toList(),
    );
  }

  /// Safely decodes a JSON string to a list of strings.
  /// Returns an empty list if the input is null or not valid JSON.
  static final _log = Logger('MasterDataDaoImpl');

  List<String> _decodeStringList(String? raw) {
    if (raw == null) return [];
    try {
      return (jsonDecode(raw) as List).cast<String>();
    } on Object catch (e) {
      _log.warning('Failed to decode JSON string list: $raw', e);
      return [];
    }
  }
}
