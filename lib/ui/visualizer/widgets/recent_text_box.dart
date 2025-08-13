import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

/// A widget that displays a recent text box with a character and code point.
class RecentTextBox extends StatelessWidget {
  /// Creates a [RecentTextBox] widget.
  const RecentTextBox({
    required this.character,
    required this.onTap,
    super.key,
  });

  /// The Unicode character to display.
  final UnicodeCharProperties character;

  /// Callback for navigation to character detail screen.
  final VoidCallback onTap;

  /// Builds the widget tree for the recent text box.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 112,
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.whiteShade),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              character.character,
              style: GoogleFonts.notoSans(color: Colors.black, fontSize: 80),
            ),
            Text(
              character.unicodeValue ?? '',
              style: GoogleFonts.notoSans(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
