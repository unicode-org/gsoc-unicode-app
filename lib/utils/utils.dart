/// Central export file for all utility components in the Unicode Flutter App.
///
/// This file serves as a central export point for all utility-related
/// functionality used throughout the application. It consolidates exports
/// from various utility directories, providing a clean and organized
/// way to import utility functionality.
///
/// Utility components provide helper functions, extensions, and other
/// tools that simplify common operations and improve code readability.
/// These utilities are designed to be reusable and consistent across
/// different parts of the application.
///
/// Key Benefits:
/// - Centralized utility management
/// - Clean import statements
/// - Easy dependency tracking
/// - Consistent utility patterns
/// - Simplified refactoring
/// - Reusable helper functions
///
/// Utility Categories:
/// - Context Extensions: BuildContext helper methods
/// - Localization Extensions: Safe localization access
/// - Debouncing: Function call optimization
/// - Unicode Helpers: Character and script utilities
/// - General Utilities: Common helper functions
///
/// Architecture:
/// - Extension-based utilities for clean APIs
/// - Helper classes for complex operations
/// - Consistent error handling patterns
/// - Type-safe utility functions
/// - Performance-optimized implementations
///
/// Usage:
/// ```dart
/// import 'package:gsoc_unicode_app/utils/utils.dart';
///
/// // Access to all utility functionality
/// final padding = context.topPadding;
/// final locale = context.appLocalizations;
/// final debouncer = Debouncer(delay: Duration(milliseconds: 500));
/// ```
library;

/// Export for constant values used across the app.
/// 
export 'consts.dart';
/// Export for debouncing utility.
///
/// A utility class for debouncing function calls, useful for
/// search inputs and other scenarios where you want to delay
/// execution until user input stops.
export 'debouncer.dart';
/// Export for context extension utilities.
///
/// Provides convenient access to theme and padding values from
/// BuildContext. Includes extensions for accessing text themes,
/// safe area padding, and other context-dependent values.
export 'extensions.dart';
/// Export for localization extension utilities.
///
/// Provides safe access to localization data from BuildContext
/// with automatic fallback to English localization if the
/// primary localization is unavailable.
export 'localization_extensions.dart';
/// Export for Unicode helper utilities.
///
/// Provides utility functions for working with Unicode characters,
/// scripts, and font selection. Includes functions for script
/// detection and font family recommendations.
export 'unicode_helper.dart';
