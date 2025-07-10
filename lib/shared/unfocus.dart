/// Utility widget for unfocusing all input fields when tapping outside.
///
/// Implements the 'unfocus when tapping in empty space' behavior for the
/// entire app.
library;

import 'package:flutter/material.dart';

/// {@template unfocus}
/// A widget that unfocus everything when tapped.
///
/// This implements the 'Unfocus when tapping in empty space'
/// behavior for the entire application.
/// {@endtemplate}
class Unfocus extends StatelessWidget {
  /// {@macro b_unfocus}
  const Unfocus({required this.child, super.key});

  /// Child widget.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
