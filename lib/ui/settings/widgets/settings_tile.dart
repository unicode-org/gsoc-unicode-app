import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.settingsDetail,
    required this.settingsInfo,
    this.lastItem = false,
  });

  // This shows the main info in the settings screen
  final String settingsInfo;

  // This shows the main detail of whatever you set
  final String settingsDetail;

  // This controls the bottom border
  final bool lastItem;

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
