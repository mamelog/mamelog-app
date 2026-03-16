//@GeneratedMicroModule;CoreDatabaseDriftPackageModule;package:core_database_drift/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_database/dao.dart' as _i687;
import 'package:core_database_drift/src/dao/bean_dao_impl.dart' as _i382;
import 'package:core_database_drift/src/dao/drink_log_dao_impl.dart' as _i980;
import 'package:core_database_drift/src/dao/master_data_dao_impl.dart' as _i504;
import 'package:core_database_drift/src/dao/pending_extraction_dao_impl.dart' as _i601;
import 'package:core_database_drift/src/dao/roaster_dao_impl.dart' as _i14;
import 'package:core_database_drift/src/database/app_database.dart' as _i363;
import 'package:injectable/injectable.dart' as _i526;

class CoreDatabaseDriftPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i687.MasterDataDao>(() => _i504.MasterDataDaoImpl(gh<_i363.DriftAppDatabase>()));
    gh.factory<_i687.DrinkLogDao>(() => _i980.DrinkLogDaoImpl(gh<_i363.DriftAppDatabase>()));
    gh.factory<_i687.RoasterDao>(() => _i14.RoasterDaoImpl(gh<_i363.DriftAppDatabase>()));
    gh.factory<_i687.PendingExtractionDao>(
      () => _i601.PendingExtractionDaoImpl(gh<_i363.DriftAppDatabase>()),
    );
    gh.factory<_i687.BeanDao>(() => _i382.BeanDaoImpl(gh<_i363.DriftAppDatabase>()));
  }
}
