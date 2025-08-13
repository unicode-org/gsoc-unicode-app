/// Test runner for the Unicode Flutter App tests.
///
/// This ensures that RustLib is properly initialized before any tests run.
library;

import 'package:flutter_test/flutter_test.dart';
import 'helpers/test_helpers.dart';

void main() {
  setUpAll(() async {
    // Initialize RustLib before any tests run
    await setupTestEnvironment();
  });

  // This is a placeholder test to ensure the setup runs
  test('RustLib is initialized', () {
    expect(true, isTrue);
  });
}
