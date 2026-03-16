// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:core_data/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:core_database_drift/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:core_datastore_shared_preferences/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:core_domain/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:core_network/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:feature_auth/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:feature_capture/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:feature_library/src/di/injection.module.dart';
// ignore: implementation_imports, reason: Injectable generated MicroPackageModules are located in lib/src
import 'package:feature_tasting/src/di/injection.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mamelog/src/di/injection.config.dart';
import 'package:mamelog/src/flavor/flavor.dart';

/// The global [GetIt] instance.
final GetIt getIt = GetIt.instance;

/// Configures the dependency injection container.
@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(CoreDatabaseDriftPackageModule),
    ExternalModule(CoreNetworkPackageModule),
    ExternalModule(CoreDataPackageModule),
    ExternalModule(CoreDomainPackageModule),
    ExternalModule(CoreDatastoreSharedPreferencesPackageModule),
    ExternalModule(FeatureCapturePackageModule),
    ExternalModule(FeatureAuthPackageModule),
    ExternalModule(FeatureLibraryPackageModule),
    ExternalModule(FeatureTastingPackageModule),
  ],
)
Future<void> configureDependencies(AppFlavor flavor) async {
  getIt.registerSingleton<AppFlavor>(flavor);
  await getIt.init();
}
