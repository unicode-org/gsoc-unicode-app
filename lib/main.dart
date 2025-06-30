/// Entry point for the Unicode Flutter App.
///
/// This file initializes the application, sets up dependency injection,
/// storage, and BLoC observers, and launches the main app widget.
library;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_bloc_observer.dart';
import 'package:gsoc_unicode_app/app/app_router.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Main entry point for the application.
///
/// Sets up the BLoC observer, initializes storage, and runs the app.
void main() async {
  Bloc.observer = AppBlocObserver();
  await AppStorage.init();
  runApp(MainApp());
}

/// The root widget of the Unicode Flutter App.
///
/// Sets up routing, theming, and provides BLoC cubits to the widget tree.
class MainApp extends StatelessWidget {
  MainApp({super.key});

  /// The app router for navigation.
  final _appRouter = AppRouter();

  /// Builds the main MaterialApp with routing, theming, and BLoC providers.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      title: 'Unicode Flutter App',
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSans().fontFamily,
        splashColor: AppTheme.blueShade,
        highlightColor: AppTheme.blueShade,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        textTheme: AppTheme.lightTextTheme,
      ),
      builder: (context, child) {
        // Optionally register the router in a service locator.
        // locator.registerSingleton<AppRouter>(_appRouter);
        return ResponsiveBreakpoints.builder(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                lazy: false,
                create: (context) =>
                    UnicodeCharactersCubit()..loadUnicodeCharacters(),
              ),
              BlocProvider(
                lazy: false,
                create: (context) =>
                    SavedCharactersCubit()..getSavedCharacters(),
              ),
              BlocProvider(
                lazy: false,
                create: (context) => AllRecentCharactersCubit()
                  ..getAllRecentlyViewedCharacters(),
              ),
            ],
            child: Unfocus(child: child!),
          ),
          breakpoints: [
            const Breakpoint(start: 0, end: 390, name: MOBILE),
            const Breakpoint(start: 391, end: 600, name: TABLET),
            const Breakpoint(start: 601, end: 800, name: DESKTOP),
          ],
        );
      },
    );
  }
}
