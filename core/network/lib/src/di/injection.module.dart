//@GeneratedMicroModule;CoreNetworkPackageModule;package:core_network/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_network/bean.dart' as _i308;
import 'package:core_network/extraction.dart' as _i650;
import 'package:core_network/master.dart' as _i568;
import 'package:core_network/src/di/injection.dart' as _i833;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;

class CoreNetworkPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i308.BeanApi>(() => networkModule.beanApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i650.ExtractionApi>(() => networkModule.extractionApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i568.MasterDataApi>(() => networkModule.masterDataApi(gh<_i361.Dio>()));
  }
}

class _$NetworkModule extends _i833.NetworkModule {}
