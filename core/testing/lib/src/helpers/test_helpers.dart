import 'package:flutter_test/flutter_test.dart';

/// Common testing helpers for the project.
abstract class TestHelpers {
  /// Ensures the testing environment is properly initialized.
  static void ensureInitialized() {
    TestWidgetsFlutterBinding.ensureInitialized();
  }
}
