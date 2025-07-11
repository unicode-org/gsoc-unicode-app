/// Settings screen for the Unicode Flutter App.
///
/// Allows users to view and adjust general app settings such as font and
/// language.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The main settings screen widget.
@RoutePage()
class SettingsScreen extends StatelessWidget {
  /// Creates a [SettingsScreen].
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.settings),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            // Optional scroll support for smaller devices
            physics:
                const BouncingScrollPhysics(), // Only scrolls when required
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        locale.general,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),

                      /// General settings box
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: AppTheme.whiteShade),
                          ),
                        ),
                        child: SettingsBox(
                          child: Column(
                            children: [
                              SettingsTile(
                                settingsInfo: locale.defaultFont,
                                settingsDetail: 'System Default',
                              ),
                              SettingsTile(
                                settingsInfo: locale.defaultLanguage,
                                settingsDetail: 'English',
                                lastItem: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        locale.more,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(), // Pushes content up if space remains
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
