//@GeneratedMicroModule;CoreDatastoreSharedPreferencesPackageModule;package:core_datastore_shared_preferences/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_datastore/data_store.dart' as _i806;
import 'package:core_datastore_shared_preferences/src/shared_preferences_data_store.dart' as _i434;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class CoreDatastoreSharedPreferencesPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i806.DataStore>(
      () => _i434.SharedPreferencesDataStore(gh<_i460.SharedPreferences>()),
    );
  }
}
