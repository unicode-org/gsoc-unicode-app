import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';

class SettingsBox extends StatelessWidget {
  const SettingsBox({super.key, required this.child});

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
