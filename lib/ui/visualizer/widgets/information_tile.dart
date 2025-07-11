import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

/// A widget that displays a labeled piece of information
/// (e.g., character detail).
class InformationTile extends StatelessWidget {
  /// Creates an [InformationTile].
  const InformationTile({
    required this.detail,
    required this.info,
    this.lastItem = false,
    this.isFontText = false,
    super.key,
  });

  /// Character detail label.
  final String detail;

  /// Character information value.
  final String info;

  /// Whether this is the last item (removes bottom border if true).
  final bool lastItem;

  /// Whether to use font styling for the info text.
  final bool isFontText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: !lastItem
              ? const BorderSide(color: AppTheme.whiteShade)
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          Text(
            detail,
            style: GoogleFonts.notoSans(fontSize: 14, color: Colors.black),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              info,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: GoogleFonts.notoSans(
                fontSize: isFontText ? 49 : 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
