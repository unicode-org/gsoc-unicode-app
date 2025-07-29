import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

/// A widget that displays a settings tile with a border and padding.
class SettingsTile extends StatelessWidget {
  /// Creates a [SettingsTile] widget.
  const SettingsTile({
    required this.settingsDetail,
    required this.settingsInfo,
    this.lastItem = false,
    super.key,
  });

  /// The main detail text to display.
  final String settingsDetail;

  /// The main info text to display.
  final String settingsInfo;

  /// Whether this is the last item (removes bottom border if true).
  final bool lastItem;

  /// Builds the widget tree for the settings tile.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15, bottom: !lastItem ? 15 : 0, right: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: !lastItem
              ? const BorderSide(color: AppTheme.whiteShade)
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  settingsInfo,
                  style: GoogleFonts.notoSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  settingsDetail,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.notoSans(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const Icon(Icons.arrow_forward_ios, size: 15),
        ],
      ),
    );
  }
}
