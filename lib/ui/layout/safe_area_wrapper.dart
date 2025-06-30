import 'package:flutter/material.dart';

class SafeAreaWrapper extends StatelessWidget {
  const SafeAreaWrapper({
    super.key,
    required this.child,
  });

  /// Child
  final Widget child;

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
