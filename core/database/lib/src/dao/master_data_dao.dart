import 'package:core_model/master.dart';

/// DAO interface for Master Data tables.
abstract class MasterDataDao {
  Stream<List<Country>> watchCountries();
  Stream<List<Variety>> watchVarieties();
  Stream<List<ProcessingMethod>> watchProcessingMethods();
  Stream<List<FlavorDescriptor>> watchFlavorDescriptors();

  /// Upserts countries.
  Future<void> upsertCountries(List<Country> countries);

  /// Upserts coffee varieties.
  Future<void> upsertVarieties(List<Variety> varieties);

  /// Upserts processing methods.
  Future<void> upsertProcessingMethods(List<ProcessingMethod> methods);

  /// Upserts flavor descriptors.
  Future<void> upsertFlavorDescriptors(List<FlavorDescriptor> descriptors);
}
