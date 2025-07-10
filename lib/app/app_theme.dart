import 'package:flutter/material.dart';

/// A class that defines the app's theme and styles.
/// This includes colors, text themes, and other styling properties.
/// It is used throughout the app to maintain a consistent look and feel.
class AppTheme {
  /// The background color for search fields.
  static const searchColor = Color(0xFFF8F8F8);

  /// A light blue accent shade with custom alpha.
  static final Color blueShade = Colors.lightBlueAccent.shade100.withValues(
    alpha: 0.2,
  );

  /// A white shade used for backgrounds or borders.
  static const whiteShade = Color(0xFFD9D9D9);

  /// The main screen background shade.
  static const screenShade = Color(0XFFF8FAFC);

  /// Light text theme for the app.
  static const lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}
