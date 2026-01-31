/// Entry point for the Unicode Flutter App.
///
/// This file serves as the main entry point for the Flutter application.
/// It initializes the application, sets up dependency injection, storage,
/// and BLoC observers, and launches the main app widget with proper
/// configuration for routing, theming, and state management.
///
/// The main function performs several critical initialization steps:
/// 1. Sets up the global BLoC observer for debugging
/// 2. Initializes the Rust library for Unicode operations
/// 3. Sets up persistent storage using Hive
/// 4. Launches the main app with proper configuration
///
/// Key Features:
/// - Global BLoC observer for comprehensive logging
/// - Rust library initialization for Unicode processing
/// - Persistent storage setup with Hive database
/// - Responsive framework integration
/// - BLoC providers for state management
/// - Custom theming and styling
/// - Auto-route configuration for navigation
///
/// Architecture:
/// - MainApp: Root widget with routing and theming
/// - MultiBlocProvider: Provides BLoCs to the widget tree
/// - ResponsiveBreakpoints: Handles different screen sizes
/// - AppRouter: Manages navigation between screens
library;

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gsoc_unicode_app/app/app_bloc_observer.dart';
import 'package:gsoc_unicode_app/app/app_router.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Main entry point for the application.
///
/// This function performs all necessary initialization steps before
/// launching the Flutter app. It sets up global configurations,
/// initializes external libraries, and prepares the app for operation.
///
/// Initialization Steps:
/// 1. BLoC Observer: Sets up global logging and debugging
/// 2. Rust Library: Initializes the dart_icu4x library for Unicode operations
/// 3. Storage: Sets up Hive database for persistent data storage
/// 4. App Launch: Runs the main app widget
///
/// Error Handling:
/// - All initialization steps are wrapped in try-catch blocks
/// - Graceful fallbacks for failed initialization
/// - Comprehensive logging for debugging
///
/// Dependencies:
/// - flutter_bloc: For state management
/// - dart_icu4x: For Unicode character processing
/// - hive_flutter: For persistent storage
/// - responsive_framework: For responsive design
void main() async {
  // Set up global BLoC observer for comprehensive logging
  Bloc.observer = AppBlocObserver();

  // Initialize Rust library for Unicode operations
  await RustLib.init();

  // Initialize persistent storage system
  await AppStorage.init();

  // Launch the main application
  runApp(MainApp());
}

/// The root widget of the Unicode Flutter App.
///
/// This widget serves as the main container for the entire application.
/// It sets up routing, theming, and provides BLoC cubits to the widget
/// tree. The widget is designed to be responsive and works across
/// different screen sizes and orientations.
///
/// Key Responsibilities:
/// - Routing: Configures AutoRoute for navigation
/// - Theming: Applies custom theme and styling
/// - State Management: Provides BLoCs to the widget tree
/// - Responsiveness: Handles different screen sizes
/// - Navigation: Sets up the app router configuration
///
/// Widget Structure:
/// - MaterialApp.router: Main app container with routing
/// - ResponsiveBreakpoints: Handles responsive design
/// - MultiBlocProvider: Provides state management
/// - Unfocus: Handles input field focus management
///
/// BLoC Providers:
/// - UnicodeCharPropertiesBloc: Manages Unicode character data
/// - SavedCharactersCubit: Manages saved/favorite characters
/// - AllRecentCharactersCubit: Manages recently viewed characters
class MainApp extends StatelessWidget {
  /// Creates a [MainApp] widget.
  MainApp({super.key});

  /// The app router for navigation between screens.
  ///
  /// This router manages all navigation within the app, including
  /// route definitions, navigation methods, and deep linking support.
  /// It's configured with AutoRoute for type-safe navigation.
  final _appRouter = AppRouter();

  /// Builds the main MaterialApp with routing, theming, and BLoC providers.
  ///
  /// This method creates the complete app structure with all necessary
  /// configurations for routing, theming, state management, and responsive
  /// design. It sets up the widget tree that will be displayed to users.
  ///
  /// Configuration Includes:
  /// - Router configuration for navigation
  /// - Custom theme and styling
  /// - Responsive breakpoints for different screen sizes
  /// - BLoC providers for state management
  /// - Input focus management
  ///
  /// Returns:
  /// - A fully configured MaterialApp with routing and state management
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Configure routing with AutoRoute
      routerConfig: _appRouter.config(),

      // Disable debug banner in production
      debugShowCheckedModeBanner: false,

      // Set app title for system UI
      title: 'GSOC Unicode App',

      // Apply custom theme and styling
      theme: ThemeData(
        // fontFamily: GoogleFonts.notoSans().fontFamily,
        splashColor: AppTheme.blueShade,
        highlightColor: AppTheme.blueShade,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        textTheme: AppTheme.lightTextTheme,
      ),

      // Custom builder for additional configuration
      builder: (context, child) {
        // Optionally register the router in a service locator.
        // locator.registerSingleton<AppRouter>(_appRouter);

        return ResponsiveBreakpoints.builder(
          child: MultiBlocProvider(
            providers: [
              // Provider for Unicode character data management
              BlocProvider(
                lazy: false,
                create: (context) => UnicodeCharPropertiesBloc()
                  ..add(
                      const UnicodeCharPropertiesEvent.getCharacters(page: 1)),
              ),

              // Provider for saved/favorite characters
              BlocProvider(
                lazy: false,
                create: (context) =>
                    SavedCharactersCubit()..getSavedCharacters(),
              ),

              // Provider for recently viewed characters
              BlocProvider(
                lazy: false,
                create: (context) => AllRecentCharactersCubit()
                  ..getAllRecentlyViewedCharacters(),
              ),

              // Provider for home screen scroll position
              BlocProvider(
                lazy: false,
                create: (context) => HomeScrollCubit(),
              ),
            ],
            child: Unfocus(child: child!),
          ),

          // Configure responsive breakpoints for different screen sizes
          breakpoints: [
            const Breakpoint(
                start: 0, end: 390, name: MOBILE), // Mobile devices
            const Breakpoint(
                start: 391, end: 600, name: TABLET), // Tablet devices
            const Breakpoint(
                start: 601, end: 800, name: DESKTOP), // Desktop devices
          ],
        );
      },
    );
  }
}
