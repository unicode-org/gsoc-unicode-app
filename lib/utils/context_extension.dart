/// Extensions on [BuildContext] for convenient access to theme and padding.
///
/// Provides easy access to text theme and safe area paddings.
library;

import 'package:flutter/material.dart';

/// Extension for accessing theme and padding values from [BuildContext].
extension ThemeContextExtension on BuildContext {
  /// Returns the current [TextTheme] from the context.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the top safe area padding plus 5 pixels.
  double get topPadding => MediaQuery.of(this).viewPadding.top + 5;

  /// Returns the bottom safe area padding plus 5 pixels.
  double get btmPadding => MediaQuery.of(this).viewPadding.bottom + 5;
}
