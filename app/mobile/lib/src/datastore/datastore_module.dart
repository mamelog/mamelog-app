import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Module for providing [SharedPreferences] to the dependency injection container.
@module
abstract class DataStoreModule {
  /// Provides the [SharedPreferences] instance.
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}
