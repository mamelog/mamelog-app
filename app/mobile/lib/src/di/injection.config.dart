// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_authenticator/authenticator.dart' as _i450;
import 'package:core_data/src/di/injection.module.dart' as _i898;
import 'package:core_database_drift/database.dart' as _i833;
import 'package:core_database_drift/src/di/injection.module.dart' as _i546;
import 'package:core_datastore_shared_preferences/src/di/injection.module.dart'
    as _i309;
import 'package:core_domain/repository.dart' as _i208;
import 'package:core_domain/src/di/injection.module.dart' as _i900;
import 'package:core_domain/usecase.dart' as _i706;
import 'package:core_network/src/di/injection.module.dart' as _i1002;
import 'package:dio/dio.dart' as _i361;
import 'package:feature_auth/src/di/injection.module.dart' as _i860;
import 'package:feature_capture/src/di/injection.module.dart' as _i432;
import 'package:feature_library/src/di/injection.module.dart' as _i574;
import 'package:feature_tasting/src/di/injection.module.dart' as _i116;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i163;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mamelog/src/auth/auth_bloc.dart' as _i976;
import 'package:mamelog/src/auth/firebase_authenticator.dart' as _i598;
import 'package:mamelog/src/database/database_module.dart' as _i601;
import 'package:mamelog/src/datastore/datastore_module.dart' as _i198;
import 'package:mamelog/src/flavor/flavor.dart' as _i237;
import 'package:mamelog/src/network/auth_interceptor.dart' as _i873;
import 'package:mamelog/src/network/network_module.dart' as _i161;
import 'package:mamelog/src/offline/notification_module.dart' as _i468;
import 'package:mamelog/src/offline/offline_extraction_service.dart' as _i749;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    await _i546.CoreDatabaseDriftPackageModule().init(gh);
    await _i1002.CoreNetworkPackageModule().init(gh);
    await _i898.CoreDataPackageModule().init(gh);
    await _i900.CoreDomainPackageModule().init(gh);
    await _i309.CoreDatastoreSharedPreferencesPackageModule().init(gh);
    await _i432.FeatureCapturePackageModule().init(gh);
    await _i860.FeatureAuthPackageModule().init(gh);
    await _i574.FeatureLibraryPackageModule().init(gh);
    await _i116.FeatureTastingPackageModule().init(gh);
    final dataStoreModule = _$DataStoreModule();
    final databaseModule = _$DatabaseModule();
    final authModule = _$AuthModule();
    final notificationModule = _$NotificationModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => dataStoreModule.sharedPreferences,
      preResolve: true,
    );
    await gh.singletonAsync<_i833.DriftAppDatabase>(
      () => databaseModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i59.FirebaseAuth>(() => authModule.firebaseAuth);
    gh.lazySingleton<_i116.GoogleSignIn>(() => authModule.googleSignIn);
    gh.lazySingleton<_i163.FlutterLocalNotificationsPlugin>(
      () => notificationModule.notificationsPlugin,
    );
    gh.lazySingleton<_i450.Authenticator>(
      () => _i598.FirebaseAuthenticator(
        gh<_i59.FirebaseAuth>(),
        gh<_i116.GoogleSignIn>(),
      ),
    );
    gh.factory<_i873.AuthInterceptor>(
      () => _i873.AuthInterceptor(gh<_i450.Authenticator>()),
    );
    gh.lazySingleton<_i976.AuthBloc>(
      () => _i976.AuthBloc(gh<_i450.Authenticator>()),
    );
    gh.lazySingleton<_i749.OfflineExtractionService>(
      () => _i749.OfflineExtractionService(
        gh<_i208.PendingExtractionRepository>(),
        gh<_i706.CreateExtractionUseCase>(),
        gh<_i163.FlutterLocalNotificationsPlugin>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () =>
          networkModule.dio(gh<_i237.AppFlavor>(), gh<_i873.AuthInterceptor>()),
    );
    return this;
  }
}

class _$DataStoreModule extends _i198.DataStoreModule {}

class _$DatabaseModule extends _i601.DatabaseModule {}

class _$AuthModule extends _i598.AuthModule {}

class _$NotificationModule extends _i468.NotificationModule {}

class _$NetworkModule extends _i161.NetworkModule {}
