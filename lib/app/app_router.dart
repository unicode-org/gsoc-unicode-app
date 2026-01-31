/// Defines the application's route configuration using AutoRoute.
///
/// The AppRouter class provides a centralized configuration for all
/// navigable routes in the Unicode Flutter App. It uses the AutoRoute
/// package to define a type-safe routing system that automatically
/// generates route classes and provides compile-time route checking.
///
/// This router implements a stack-based navigation system where routes
/// are pushed onto a stack and can be navigated between using the
/// generated route classes. It supports both simple navigation and
/// complex nested routing scenarios.
///
/// Key Features:
/// - Type-safe routing with compile-time checking
/// - Automatic route generation from configuration
/// - Support for route parameters and nested routes
/// - Consistent navigation patterns across the app
/// - Easy route management and maintenance
/// - Integration with Flutter's navigation system
///
/// Route Structure:
/// - Splash: Initial loading screen
/// - Base: Main container with bottom navigation
/// - Home: Tool selection screen
/// - Unicode Explorer: Character browsing and search
/// - Multilingual Tester: Font testing interface
/// - Settings: App configuration and preferences
/// - Saved: User's saved characters
///
/// Usage:
/// ```dart
/// // Navigate to a specific route
/// context.router.push(HomeRoute());
///
/// // Navigate with parameters
/// context.router.push(BaseRoute(index: 1));
///
/// // Replace current route
/// context.router.replace(UnicodeExplorerRoute());
/// ```
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';

part 'app_router.gr.dart';

/// The main router for the Unicode Flutter App.
///
/// This class defines all the navigable pages and screens in the app
/// using AutoRoute's declarative routing system. It provides a clean,
/// maintainable way to manage navigation between different parts of
/// the application.
///
/// The router uses AutoRoute's code generation to automatically create
/// route classes, page builders, and navigation methods. This ensures
/// type safety and reduces the chance of runtime navigation errors.
///
/// Navigation Features:
/// - Stack-based navigation with push/pop operations
/// - Support for route parameters and query strings
/// - Automatic route generation and validation
/// - Integration with Flutter's navigation system
/// - Support for deep linking and web URLs
///
/// Route Configuration:
/// - Each route is defined with a path and page builder
/// - Routes can include parameters and nested structures
/// - The initial route is automatically set to the splash screen
/// - All routes are accessible through the generated route classes
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        // Initial splash screen - shown when app starts
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),

        CustomRoute<dynamic>(
          // Base screen with bottom navigation - main app container
          path: '/base:index',
          page: BaseRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          barrierColor: Colors.transparent,
          children: [
            // Home screen - tool selection interface
            CustomRoute<dynamic>(
              path: 'home',
              page: HomeRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              barrierColor: Colors.transparent,
            ),
            // Unicode explorer - character browsing and search
            CustomRoute<dynamic>(
              path: 'unicode-explorer',
              page: UnicodeExplorerRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              barrierColor: Colors.transparent,
            ),
            // Multilingual tester - font testing and comparison
            CustomRoute<dynamic>(
              path: 'multilingual-tester',
              page: MultilingualTesterRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              barrierColor: Colors.transparent,
            ),
            // Saved characters - user's favorite characters
            CustomRoute<dynamic>(
              path: 'saved',
              page: SavedRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              barrierColor: Colors.transparent,
            ),
          ],
        ),
      ];
}
