import 'package:core_common/result.dart';
import 'package:core_model/master.dart';

/// Repository interface for master data.
abstract class MasterDataRepository {
  /// Watches all available countries.
  Stream<List<Country>> watchCountries();

  /// Watches all available coffee varieties.
  Stream<List<Variety>> watchVarieties();

  /// Watches all available processing methods.
  Stream<List<ProcessingMethod>> watchProcessingMethods();

  /// Watches all available flavor descriptors.
  Stream<List<FlavorDescriptor>> watchFlavorDescriptors();

  /// Refreshes all master data from the remote server.
  Future<Result<void>> refreshAll();
}
