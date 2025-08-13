import 'dart:async';

import 'package:flutter/material.dart';

/// {@template debouncer}
/// Utility for debouncing functions
/// {@endtemplate}
class Debouncer {
  /// {@macro debouncer}
  Debouncer({
    required this.delay,
  });

  /// Delay
  final Duration delay;

  /// Timer
  Timer? _timer;

  /// Callback
  Timer run(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
    return _timer!;
  }

  /// Dispose method
  void dispose() => _timer?.cancel();
}
