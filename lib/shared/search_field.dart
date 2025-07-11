/// A customizable search text field widget for the Unicode Flutter App.
///
/// Used for searching by name or code, or for entering text in tester mode.
library;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// A search field with optional multi-line and tester mode support.
///
/// Parameters:
/// - [onTap]: Callback when the field is tapped.
/// - [onChanged]: Callback when the text changes.
/// - [showCursor]: Whether to show the cursor.
/// - [readOnly]: Whether the field is read-only.
/// - [isTester]: Whether the field is in tester mode (multi-line, different
/// hint).
/// - [controller]: The text editing controller for the field.
class SearchField extends StatelessWidget {
  /// Creates a [SearchField] widget.
  const SearchField({
    this.onTap,
    this.onChanged,
    this.showCursor = true,
    this.readOnly = false,
    this.isTester = false,
    this.controller,
    super.key,
  });

  /// Callback when the field is tapped.
  final void Function()? onTap;

  /// Whether to show the cursor.
  final bool showCursor;

  /// Whether the field is read-only.
  final bool readOnly;

  /// Callback when the text changes.
  final void Function(String)? onChanged;

  /// The text editing controller for the field.
  final TextEditingController? controller;

  /// Controls the height and hint of the field (tester mode).
  final bool isTester;

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    return TextField(
      showCursor: showCursor,
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      readOnly: readOnly,
      maxLines: isTester ? 5 : 1,
      keyboardType: TextInputType.multiline,
      autofillHints: const [AutofillHints.name],
      cursorColor: Colors.blue.shade400,
      decoration: InputDecoration(
        fillColor: AppTheme.searchColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppTheme.whiteShade),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppTheme.whiteShade),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: isTester ? 10 : 0,
        ),
        hintText:
            !isTester ? 'Search by name or code' : locale.enterTextOrCharacters,
        hintStyle: TextStyle(
          fontFamily: GoogleFonts.notoSans().fontFamily,
          color: isTester ? Colors.grey : Colors.black,
          fontSize: 16,
        ),
        prefixIcon: !isTester
            ? Icon(size: 20, color: Colors.blue.shade300, Icons.search)
            : null,
      ),
    );
  }
}
