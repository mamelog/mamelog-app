import 'package:core_datastore/data_store.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// [DataStore] implementation using [SharedPreferences].
@LazySingleton(as: DataStore)
class SharedPreferencesDataStore implements DataStore {
  /// Creates a [SharedPreferencesDataStore].
  SharedPreferencesDataStore(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  Future<String?> getString(String key) async {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<void> setBool(String key, {required bool value}) async {
    await _sharedPreferences.setBool(key, value);
  }

  @override
  Future<int?> getInt(String key) async {
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  @override
  Future<void> remove(String key) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() async {
    await _sharedPreferences.clear();
  }
}
