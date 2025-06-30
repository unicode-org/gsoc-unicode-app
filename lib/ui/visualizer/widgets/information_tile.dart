import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

class InformationTile extends StatelessWidget {
  const InformationTile({
    super.key,
    required this.detail,
    required this.info,
    this.lastItem = false,
    this.isFontText = false,
  });

  // Character detail
  final String detail;

  // Character information
  final String info;

  final bool lastItem;

  // Using this to decipher font component from character component
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
