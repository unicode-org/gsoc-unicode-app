import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// A widget that displays a tool option with icon, title, and description.
class ToolBox extends StatelessWidget {
  /// Creates a [ToolBox] widget.
  const ToolBox({
    required this.tool,
    required this.description,
    required this.icon,
    required this.onTap,
    super.key,
  });

  /// Tool text.
  final String tool;

  /// Tool description.
  final String description;

  /// Tool icon.
  final IconData icon;

  /// Callback for navigation or action when the tool is tapped.
  final VoidCallback onTap;

  /// Builds the widget tree for the tool box.
  @override
  Widget build(BuildContext context) {
    return ShrinkableButton(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.whiteShade),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheme.blueShade,
              ),
              child: Icon(icon, size: 40, color: Colors.blue),
            ),
            const SizedBox(width: 17),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tool,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.notoSans(
                      textStyle: context.textTheme.displayLarge?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 17),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
