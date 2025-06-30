/// A button widget that shrinks when pressed, providing a tactile feedback effect.
///
/// Used for interactive elements that benefit from a press animation.
library;

import 'package:flutter/material.dart';

/// A button that animates its scale when pressed, then triggers [onTap].
///
/// Parameters:
/// - [child]: The widget to display inside the button.
/// - [onTap]: Callback when the button is tapped.
class ShrinkableButton extends StatefulWidget {
  const ShrinkableButton({super.key, required this.child, this.onTap});

  /// The widget to display inside the button.
  final Widget child;

  /// Callback when the button is tapped.
  final VoidCallback? onTap;

  @override
  State<ShrinkableButton> createState() => _ShrinkableButtonState();
}

class _ShrinkableButtonState extends State<ShrinkableButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      value: 1,
      lowerBound: 0.8,
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //tag: 'shrinkable-button',
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: (_) {
          _controller.reverse();
        },
        onTapUp: (_) {
          _controller.forward();
        },
        onTapCancel: () {
          _controller.forward();
        },
        onTap: () {
          Future.delayed(const Duration(milliseconds: 200), () {
            widget.onTap?.call();
          });
        },
        child: Transform.scale(
          scale: _curvedAnimation.value,
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
