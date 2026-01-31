/// A widget that displays a Unicode character tile with comprehensive
/// information.
///
/// The CharacterTile widget is a reusable component that displays a single
/// Unicode character along with its name, code point, and script information.
/// It's designed to be used in lists and grids where users can browse and
/// select Unicode characters for further exploration or saving.
///
/// The widget automatically applies appropriate font styling based on the
/// character's script, ensuring proper rendering of multilingual content.
/// It also provides visual feedback for selection states and supports
/// touch interactions for user engagement.
///
/// Key Features:
/// - Displays character symbol with script-appropriate font
/// - Shows character name and Unicode code point
/// - Supports selection state with visual highlighting
/// - Responsive layout that adapts to content
/// - Touch interaction with callback support
/// - Automatic font selection based on script
///
/// Usage:
/// ```dart
/// CharacterTile(
///   character: '😀',
///   characterName: 'GRINNING FACE',
///   codePoint: 'U+1F600',
///   script: 'Emoji',
///   onTap: () => handleCharacterTap(),
///   isSelected: false,
/// )
/// ```
library;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/utils/unicode_helper.dart';

/// Displays a tile for a Unicode character with comprehensive information.
///
/// This widget represents a single Unicode character in a list or grid
/// format. It displays the character symbol, name, code point, and script
/// information in a clean, organized layout that's easy to read and
/// interact with.
///
/// The widget automatically selects the most appropriate font for the
/// character based on its script, ensuring proper rendering of various
/// writing systems. It also provides visual feedback for selection
/// states and supports touch interactions for user engagement.
///
/// Layout Structure:
/// - Left: Character symbol with script-appropriate font
/// - Center: Character name (truncated if too long)
/// - Right: Unicode code point
/// - Background: Changes color based on selection state
///
/// Font Selection:
/// - Automatically selects appropriate font based on script
/// - Falls back to system default if script-specific font unavailable
/// - Ensures proper rendering of multilingual content
class CharacterTile extends HookWidget {
  /// Creates a [CharacterTile] widget.
  ///
  /// All parameters are required to ensure proper widget configuration
  /// and display. The widget will automatically handle font selection
  /// and layout based on the provided information.
  ///
  /// Parameters:
  /// - [character]: The Unicode character symbol to display
  /// - [characterName]: The human-readable name of the character
  /// - [codePoint]: The Unicode code point in standard format
  /// - [script]: The Unicode script name for font selection
  /// - [onTap]: Callback function for touch interactions
  /// - [isSelected]: Whether the tile is currently selected
  const CharacterTile({
    required this.character,
    required this.characterName,
    required this.codePoint,
    required this.script,
    required this.onTap,
    this.isSelected = false,
    this.isControlCharacter = false,
    super.key,
  });

  /// The Unicode character symbol to display.
  ///
  /// This is the actual character that will be rendered in the tile.
  /// It can be any valid Unicode character, including emojis, letters,
  /// symbols, and other Unicode code points. The character will be
  /// displayed using a font appropriate for its script.
  final String character;

  /// The human-readable name of the character.
  ///
  /// This is the official Unicode name for the character, typically
  /// in English. Examples include "GRINNING FACE", "LATIN CAPITAL
  /// LETTER A", or "HEAVY BLACK HEART". The name may be truncated
  /// if it's too long to fit in the available space.
  final String characterName;

  /// The Unicode code point in standard format.
  ///
  /// This is the hexadecimal representation of the character's
  /// Unicode code point, typically formatted as "U+XXXX" for
  /// 16-bit characters or "U+XXXXXX" for 32-bit characters.
  /// Examples include "U+0041" for 'A' or "U+1F600" for '😀'.
  final String codePoint;

  /// The Unicode script name for font selection.
  ///
  /// This identifies the writing system or script that the character
  /// belongs to. It's used to automatically select the most appropriate
  /// font for rendering the character. Examples include "Latin",
  /// "Cyrillic", "Arabic", "Han", or "Emoji".
  final String script;

  /// Callback function that is executed when the tile is tapped.
  ///
  /// This function is called when the user taps on the character tile.
  /// It's typically used to navigate to a detail view, save the
  /// character, or perform other user-initiated actions. The callback
  /// receives no parameters and should handle the tap action appropriately.
  final VoidCallback onTap;

  /// Whether the tile is currently selected.
  ///
  /// When true, the tile displays with a blue background to indicate
  /// selection. When false, the tile displays with a transparent
  /// background. This is useful for multi-selection interfaces or
  /// highlighting the currently active character.
  final bool isSelected;

  /// Whether this character is a control character.
  ///
  /// Control characters are special non-printing characters that have specific
  /// functions in text processing, such as newline, tab, or bell characters.
  final bool isControlCharacter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // Dynamic background color based on selection state
        color: isSelected
            ? Colors.blue.withValues(alpha: 0.2) // Light blue when selected
            : Colors.transparent, // Transparent when not selected
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  // Character symbol with script-appropriate font
                  Text(
                    character,
                    style: UnicodeHelper.getFontStylesForScript(script)
                        .first
                        .copyWith(
                            fontSize: 24), // Larger font for better visibility
                  ),
                  if (!isControlCharacter) const SizedBox(width: 10),

                  // Character name with overflow handling
                  Expanded(
                    child: Text(
                      characterName,
                      overflow: TextOverflow.ellipsis, // Truncate if too long
                      maxLines: 1, // Single line layout
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

            // Unicode code point display
            Text(
              codePoint,
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
