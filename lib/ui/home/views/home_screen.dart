/// Home screen for the Unicode Flutter App.
///
/// This screen serves as the main landing page after the splash screen. It
/// presents users with a clean interface to choose between the two main tools
/// available in the app: the Unicode Character Visualizer and the Multilingual
/// Tester.
///
/// The screen is designed with a responsive layout that adapts to different
/// screen sizes and provides clear visual hierarchy for tool selection.
/// Each tool is presented with an icon, title, and description to help users
/// understand what each tool does.
///
/// Key Features:
/// - Clean, intuitive tool selection interface
/// - Responsive design that works on various screen sizes
/// - Clear visual feedback for each tool option
/// - Smooth navigation to selected tools
/// - Consistent styling with the app theme
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_router.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The main home screen widget that presents tool selection options.
///
/// This widget provides a welcoming interface where users can choose which
/// Unicode tool they want to use. It displays two main options:
/// 1. Unicode Character Visualizer - for exploring and searching Unicode
/// characters
/// 2. Multilingual Tester - for testing text rendering in different fonts
///
/// The layout is designed to be responsive and provides clear visual hierarchy
/// with proper spacing and typography. Each tool option is presented as a
/// clickable card with descriptive text and an appropriate icon.
@RoutePage()
class HomeScreen extends HookWidget {
  /// Creates a [HomeScreen].
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get localized strings for the current locale
    final locale = context.appLocalizations;

    // Scroll controller for the home screen
    final scrollController = useScrollController();

    // Captures the cubit once (no context lookup during dispose)
    final homeScrollCubit =
        useMemoized(() => context.read<HomeScrollCubit>(), []);

    // register and cleanup using the captured reference
    useEffect(
      () {
        homeScrollCubit.setScrollController(scrollController);
        return homeScrollCubit.clearScrollController;
      },
      [scrollController, homeScrollCubit],
    );

    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.unicodeTools),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              controller: scrollController, // Add this to attach the controller
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),

                      // Main heading for the screen
                      Text(
                        locale.chooseTool,
                        style: GoogleFonts.notoSans(
                          textStyle: context.textTheme.displayLarge,
                        ),
                      ),
                      const SizedBox(height: 40),

                      /// ToolBox for Unicode Character Visualizer
                      ///
                      /// This tool allows users to search, explore, and
                      /// visualize Unicode characters. It provides
                      /// comprehensive information
                      /// about each character including properties, code
                      /// points, and visual representation.
                      ToolBox(
                        onTap: () => context.router.push(BaseRoute(index: 1)),
                        tool: locale.unicodeCharacterVisualizer,
                        description: locale.exploreAndVisualize,
                        icon: Icons.search,
                      ),
                      const SizedBox(height: 24),

                      /// ToolBox for Multilingual Tester
                      ///
                      /// This tool enables users to test how text renders in
                      /// different font families. It's particularly useful for
                      /// multilingual content where proper font selection is
                      /// crucial for readability and aesthetics.
                      ToolBox(
                        onTap: () => context.router.push(BaseRoute(index: 2)),
                        tool: locale.multilingualText,
                        description: locale.testText,
                        icon: Icons.language,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
