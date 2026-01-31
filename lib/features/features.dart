/// Central export file for all feature modules in the Unicode Flutter App.
///
/// This file serves as a central export point for all feature-related
/// modules, providing a clean and organized way to import feature
/// functionality throughout the application. It consolidates exports
/// from various feature directories, making it easier to manage
/// dependencies and maintain clean import statements.
///
/// The features module is organized by functionality, with each
/// feature containing its own set of related components:
/// - BLoCs and Cubits for state management
/// - Models for data representation
/// - Services for business logic
/// - UI components for user interaction
///
/// Key Benefits:
/// - Centralized feature management
/// - Clean import statements
/// - Easy dependency tracking
/// - Consistent feature organization
/// - Simplified refactoring
///
/// Usage:
/// ```dart
/// import 'package:gsoc_unicode_app/features/features.dart';
///
/// // Access to all feature exports
/// final bloc = UnicodeCharPropertiesBloc();
/// final cubit = SavedCharactersCubit();
/// ```
library;

/// Exports the home_scroll feature module.
///
/// This barrel export file provides a single entry point for importing all
/// home_scroll related functionality, including widgets, state management,
/// and utilities associated with the home scrolling feature.
///
/// Usage:
/// ```dart
/// import 'package:gsoc_unicode_app/features/features.dart';
/// ```
///
/// This makes all home_scroll exports available without needing to import
/// the home_scroll module directly.
export 'home_scroll/home_scroll.dart';



/// Export for Unicode characters feature module.
///
/// This export provides access to all components related to Unicode
/// character management, including:
/// - BLoCs for character data management
/// - Cubits for saved and recent characters
/// - Models for character representation
/// - Services for character operations
export 'unicode_characters/unicode_characters.dart';
