/// A widget that displays a Unicode character tile with its name and code
/// point.
///
/// Used in the character list to allow users to select and view details.
library;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

/// Displays a tile for a Unicode character, including its symbol, name, and
/// code point.
///
/// Parameters:
/// - [character]: The Unicode character to display.
/// - [characterName]: The name of the character.
/// - [codePoint]: The Unicode code point.
/// - [onTap]: Callback when the tile is tapped.
/// - [isSelected]: Whether the tile is currently selected (for highlighting).
class CharacterTile extends HookWidget {
  /// Creates a [CharacterTile] widget.
  const CharacterTile({
    required this.character,
    required this.characterName,
    required this.codePoint,
    required this.onTap,
    this.isSelected = false,
    super.key,
  });

  /// The Unicode character to display.
  final String character;

  /// The name of the character.
  final String characterName;

  /// The Unicode code point.
  final String codePoint;

  /// Callback when the tile is tapped.
  final VoidCallback onTap;

  /// Whether the tile is currently selected (for highlighting).
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: isSelected
            ? Colors.blue.withValues(alpha: 0.2)
            : Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(character, style: const TextStyle(fontSize: 24)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      characterName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              codePoint,
              style: GoogleFonts.notoSans(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
