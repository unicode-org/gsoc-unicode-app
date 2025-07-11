/// Home screen for the Unicode Flutter App.
///
/// Allows users to choose between the Unicode Character Visualizer and
/// Multilingual Tester tools.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_router.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The main home screen widget.
///
/// Presents tool selection options to the user.
@RoutePage()
class HomeScreen extends StatelessWidget {
  /// Creates a [HomeScreen].
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.unicodeTools),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              // Optional for smaller devices
              physics:
                  const BouncingScrollPhysics(), // Only scrolls when required
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        locale.chooseTool,
                        style: GoogleFonts.notoSans(
                          textStyle: context.textTheme.displayLarge,
                        ),
                      ),
                      const SizedBox(height: 40),

                      /// ToolBox for Unicode Character Visualizer
                      ToolBox(
                        onTap: () => context.router.push(BaseRoute(index: 1)),
                        tool: locale.unicodeCharacterVisualizer,
                        description: locale.exploreAndVisualize,
                        icon: Icons.search,
                      ),
                      const SizedBox(height: 24),

                      /// ToolBox for Multilingual Tester
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
