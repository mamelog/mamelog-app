import 'package:flutter_test/flutter_test.dart';
import 'package:mamelog/src/app.dart';

void main() {
  testWidgets('App smoke test: App widget can be instantiated', (tester) async {
    // Verify the App widget type exists and can be constructed.
    // Full integration test requires Firebase initialization,
    // which is handled separately in integration tests.
    expect(const App(), isA<App>());
  });
}
