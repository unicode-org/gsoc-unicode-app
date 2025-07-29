import 'package:flutter/material.dart';

/// A widget that wraps its child in a [SafeArea] widget with specific
/// configuration.
///
/// This widget ensures that the child widget is displayed within the safe
/// area of the screen, allowing for better layout and user experience.
class SafeAreaWrapper extends StatelessWidget {
  /// Creates a [SafeAreaWrapper] widget.
  const SafeAreaWrapper({
    required this.child,
    super.key,
  });

  /// The child widget to wrap in a safe area.
  final Widget child;

  /// Builds the widget tree for the safe area wrapper.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      right: false,
      left: false,
      child: child,
    );
  }
}
