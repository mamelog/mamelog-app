/// Abstract interface for a Key-Value store.
abstract class DataStore {
  /// Gets a string value for the given [key].
  Future<String?> getString(String key);

  /// Sets a string [value] for the given [key].
  Future<void> setString(String key, String value);

  /// Gets a boolean value for the given [key].
  Future<bool?> getBool(String key);

  /// Sets a boolean [value] for the given [key].
  Future<void> setBool(String key, {required bool value});

  /// Gets an integer value for the given [key].
  Future<int?> getInt(String key);

  /// Sets an integer [value] for the given [key].
  Future<void> setInt(String key, int value);

  /// Removes the value for the given [key].
  Future<void> remove(String key);

  /// Clears all values from the store.
  Future<void> clear();
}
