import 'package:logging/logging.dart';

/// Initializes the logging system.
///
/// This function sets the root logger level to `Level.ALL` and listens
/// to `Logger.root.onRecord` to print log records to the console.
void initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print, Print logs to console.
    print(
      '${record.time} [${record.level.name}] ${record.loggerName}: ${record.message}',
    );
    if (record.error != null) {
      // ignore: avoid_print, Print error to console.
      print('Error: ${record.error}');
    }
    if (record.stackTrace != null) {
      // ignore: avoid_print, Print stack trace to console.
      print('StackTrace: ${record.stackTrace}');
    }
  });
}
