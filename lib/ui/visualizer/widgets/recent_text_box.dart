import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/models/models.dart';

class RecentTextBox extends StatelessWidget {
  const RecentTextBox({
    super.key,
    required this.character,
    required this.onTap,
  });

  // Character
  final UnicodeCharacter character;

  // Ontap Navigates to character detail screen
  final VoidCallback onTap;

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
              character.codePoint,
              style: GoogleFonts.notoSans(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
