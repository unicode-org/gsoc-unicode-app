import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

/// A widget that displays a settings box with a border and padding.
class SettingsBox extends StatelessWidget {
  /// Creates a [SettingsBox] widget.
  const SettingsBox({required this.child, super.key});

  /// Child widget.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.whiteShade),
      ),
      child: child,
    );
  }
}
