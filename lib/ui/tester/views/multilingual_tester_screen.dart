/// Multilingual tester screen for the Unicode Flutter App.
///
/// Allows users to input text, select fonts, and preview multilingual rendering.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The main multilingual tester screen widget.
@RoutePage()
class MultilingualTesterScreen extends StatelessWidget {
  /// Creates a [MultilingualTesterScreen].
  const MultilingualTesterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.multilingualTester),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              locale.textToCompare,
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),

            /// Input field for text to compare
            const SearchField(isTester: true),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      locale.font,
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// Font selection box
                    const FontBox(),
                    const SizedBox(height: 40),
                    Text(
                      locale.renderingPreview,
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),

                    /// Preview area for rendered text
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 23,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppTheme.whiteShade),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Arial',
                            maxLines: 2,
                            style: GoogleFonts.notoSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'A cursus ac non eget lacus urna vestibulum nisi.',
                            style: GoogleFonts.notoSans(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
