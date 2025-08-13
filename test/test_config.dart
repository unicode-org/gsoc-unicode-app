/// Test configuration for the Unicode Flutter App tests.
///
/// This file ensures that RustLib is properly initialized before any tests
/// that use dart_icu4x run.
library;

import 'package:flutter_test/flutter_test.dart';
import 'helpers/test_helpers.dart';

/// Global test setup that runs before any tests.
///
/// This ensures that RustLib is initialized before any tests that use
/// dart_icu4x functions run.
void main() {
  setUpAll(() async {
    // Initialize RustLib before any tests run
    await setupTestEnvironment();
  });
}
