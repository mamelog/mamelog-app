import 'package:core_datastore_shared_preferences/src/shared_preferences_data_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late SharedPreferences sharedPreferences;
  late SharedPreferencesDataStore dataStore;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    sharedPreferences = await SharedPreferences.getInstance();
    dataStore = SharedPreferencesDataStore(sharedPreferences);
  });

  group('SharedPreferencesDataStore', () {
    test('getString returns stored value', () async {
      await sharedPreferences.setString('key', 'value');
      expect(await dataStore.getString('key'), 'value');
    });

    test('setString stores value', () async {
      await dataStore.setString('key', 'value');
      expect(sharedPreferences.getString('key'), 'value');
    });

    test('getBool returns stored value', () async {
      await sharedPreferences.setBool('key', true);
      expect(await dataStore.getBool('key'), true);
    });

    test('setBool stores value', () async {
      await dataStore.setBool('key', value: true);
      expect(sharedPreferences.getBool('key'), true);
    });

    test('getInt returns stored value', () async {
      await sharedPreferences.setInt('key', 42);
      expect(await dataStore.getInt('key'), 42);
    });

    test('setInt stores value', () async {
      await dataStore.setInt('key', 42);
      expect(sharedPreferences.getInt('key'), 42);
    });

    test('remove deletes value', () async {
      await sharedPreferences.setString('key', 'value');
      await dataStore.remove('key');
      expect(sharedPreferences.getString('key'), isNull);
    });

    test('clear deletes all values', () async {
      await sharedPreferences.setString('key1', 'value1');
      await sharedPreferences.setString('key2', 'value2');
      await dataStore.clear();
      expect(sharedPreferences.getString('key1'), isNull);
      expect(sharedPreferences.getString('key2'), isNull);
    });
  });
}
