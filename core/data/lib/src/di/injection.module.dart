//@GeneratedMicroModule;CoreDataPackageModule;package:core_data/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_data/src/repository/bean_repository_impl.dart' as _i693;
import 'package:core_data/src/repository/drink_log_repository_impl.dart' as _i969;
import 'package:core_data/src/repository/extraction_repository_impl.dart' as _i188;
import 'package:core_data/src/repository/master_data_repository_impl.dart' as _i326;
import 'package:core_data/src/repository/pending_extraction_repository_impl.dart' as _i834;
import 'package:core_data/src/repository/roaster_repository_impl.dart' as _i278;
import 'package:core_database/dao.dart' as _i687;
import 'package:core_domain/repository.dart' as _i208;
import 'package:core_network/extraction.dart' as _i650;
import 'package:core_network/master.dart' as _i568;
import 'package:injectable/injectable.dart' as _i526;

class CoreDataPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i208.BeanRepository>(() => _i693.BeanRepositoryImpl(gh<_i687.BeanDao>()));
    gh.lazySingleton<_i208.DrinkLogRepository>(
      () => _i969.DrinkLogRepositoryImpl(gh<_i687.DrinkLogDao>()),
    );
    gh.lazySingleton<_i208.MasterDataRepository>(
      () => _i326.MasterDataRepositoryImpl(
        gh<_i687.MasterDataDao>(),
        gh<_i568.MasterDataApi>(),
      ),
    );
    gh.lazySingleton<_i208.RoasterRepository>(
      () => _i278.RoasterRepositoryImpl(gh<_i687.RoasterDao>()),
    );
    gh.lazySingleton<_i208.ExtractionRepository>(
      () => _i188.ExtractionRepositoryImpl(gh<_i650.ExtractionApi>()),
    );
    gh.lazySingleton<_i208.PendingExtractionRepository>(
      () => _i834.PendingExtractionRepositoryImpl(gh<_i687.PendingExtractionDao>()),
    );
  }
}
