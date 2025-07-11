/// Custom BLoC observer for logging and debugging BLoC events, changes, and
/// errors.
///
/// This observer is set as the global [Bloc.observer] in main.dart to help
/// track and debug state changes and errors throughout the app.
library;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Observes all BLoC events, state changes, and errors in the app.
class AppBlocObserver extends BlocObserver {
  /// Called whenever an event is added to any BLoC.
  ///
  /// Logs the event and the BLoC type.
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('onEvent([33m${bloc.runtimeType}[0m, $event)');
  }

  /// Called whenever a state change occurs in any BLoC.
  ///
  /// Logs the change and the BLoC type.
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint('onChange([34m${bloc.runtimeType}[0m, $change)');
  }

  /// Called whenever an error is thrown in any BLoC.
  ///
  /// Logs the error, stack trace, and the BLoC type.
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError([31m${bloc.runtimeType}[0m, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
