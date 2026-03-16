/// Application flavor types.
enum AppFlavor {
  /// Development environment.
  dev,

  /// Staging environment.
  stg,

  /// Production environment.
  prod
  ;

  /// Returns the flavor from a string value.
  static AppFlavor fromString(String value) {
    return AppFlavor.values.firstWhere(
      (f) => f.name == value,
      orElse: () => AppFlavor.dev,
    );
  }
}
