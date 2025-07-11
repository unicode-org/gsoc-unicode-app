/// Defines the application's route configuration using AutoRoute.
///
/// This file sets up all the main navigation routes for the Unicode Flutter
///  App.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';

part 'app_router.gr.dart';

/// The main router for the Unicode Flutter App.
///
/// Uses [AutoRoute] to define all navigable pages/screens in the app.
///
/// Routes:
/// - `/` (SplashRoute): Initial splash screen
/// - `/base:index` (BaseRoute): Main base screen with index
/// - `/home` (HomeRoute): Home screen
/// - `/unicode-explorer` (UnicodeExplorerRoute): Unicode explorer screen
/// - `/multilingual-tester` (MultilingualTesterRoute): Multilingual tester screen
/// - `/settings` (SettingsRoute): Settings screen
/// - `/saved` (SavedRoute): Saved characters screen
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),
        AutoRoute(path: '/base:index', page: BaseRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/unicode-explorer', page: UnicodeExplorerRoute.page),
        AutoRoute(
          path: '/multilingual-tester',
          page: MultilingualTesterRoute.page,
        ),
        AutoRoute(path: '/settings', page: SettingsRoute.page),
        AutoRoute(path: '/saved', page: SavedRoute.page),
      ];
}
