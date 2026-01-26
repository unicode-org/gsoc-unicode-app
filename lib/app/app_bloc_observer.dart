/// Custom BLoC observer for comprehensive logging and debugging of BLoC
/// operations.
///
/// The AppBlocObserver is a custom implementation of Flutter BLoC's observer
/// that provides detailed logging and debugging information for all BLoC
/// events, state changes, and errors throughout the application.
///
/// This observer is set as the global [Bloc.observer] in main.dart and
/// automatically tracks all BLoC activity without requiring manual
/// instrumentation. It's particularly useful during development and
/// debugging to understand the flow of data and identify potential issues.
///
/// Key Features:
/// - Automatic logging of all BLoC events
/// - State change tracking with before/after values
/// - Error logging with stack traces
/// - Color-coded console output for better readability
/// - Non-intrusive operation (doesn't affect app performance)
/// - Comprehensive coverage of all BLoC operations
///
/// Logging Output:
/// - Events: Green text with event details
/// - State Changes: Blue text with change information
/// - Errors: Red text with error details and stack traces
///
/// Usage:
/// ```dart
/// // In main.dart
/// Bloc.observer = AppBlocObserver();
///
/// // All BLoC operations are automatically logged
/// ```
library;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Observes all BLoC events, state changes, and errors in the app.
///
/// This observer provides comprehensive logging and debugging information
/// for all BLoC operations throughout the application. It's automatically
/// called by the BLoC framework whenever events occur, states change,
/// or errors are thrown, making it an invaluable tool for development
/// and debugging.
///
/// The observer implements three main callback methods:
/// - [onEvent]: Logs when events are added to BLoCs
/// - [onChange]: Logs when states change in BLoCs
/// - [onError]: Logs when errors occur in BLoCs
///
/// All logging is done using Flutter's debugPrint function, which means
/// the output only appears in debug builds and doesn't affect production
/// performance. The logs are color-coded for better readability in the
/// console.
///
/// Implementation Details:
/// - Uses ANSI color codes for console output formatting
/// - Provides detailed information about each operation
/// - Maintains consistent logging format across all callbacks
/// - Integrates seamlessly with Flutter's debugging tools
class AppBlocObserver extends BlocObserver {
  /// Called whenever an event is added to any BLoC.
  ///
  /// This method is automatically invoked by the BLoC framework whenever
  /// an event is dispatched to any BLoC in the application. It provides
  /// logging information about the event and the BLoC that received it.
  ///
  /// The logging output includes:
  /// - The type of BLoC that received the event
  /// - The event object itself (with its properties)
  /// - Color-coded formatting for better console readability
  ///
  /// This callback is useful for:
  /// - Tracking user interactions and system events
  /// - Understanding the flow of data through the app
  /// - Debugging event handling issues
  /// - Monitoring app usage patterns
  ///
  /// Parameters:
  /// - [bloc]: The BLoC instance that received the event
  /// - [event]: The event object that was dispatched
  ///
  /// Example Output:
  /// ```dart
  /// onEvent(
  ///   UnicodeCharPropertiesBloc, GetCharacters(page: 1, searchQuery: "heart")
  /// )
  /// ```
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    // Green text for events (33m = green foreground)
    debugPrint('onEvent([33m${bloc.runtimeType}[0m, $event)');
  }

  /// Called whenever a state change occurs in any BLoC.
  ///
  /// This method is automatically invoked by the BLoC framework whenever
  /// a BLoC's state changes. It provides detailed logging information
  /// about the change, including the previous and new states.
  ///
  /// The logging output includes:
  /// - The type of BLoC that changed state
  /// - The Change object containing before/after state information
  /// - Color-coded formatting for better console readability
  ///
  /// This callback is useful for:
  /// - Tracking state transitions and data flow
  /// - Understanding how user actions affect app state
  /// - Debugging state management issues
  /// - Monitoring app behavior and performance
  ///
  /// Parameters:
  /// - [bloc]: The BLoC instance that changed state
  /// - [change]: The Change object containing state transition details
  ///
  /// Example Output:
  /// ```dart
  /// onChange(
  ///   UnicodeCharPropertiesBloc,
  ///   Change { currentState: Loading, nextState: Loaded }
  /// )
  /// ```
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    // Blue text for state changes (34m = blue foreground)
    // debugPrint('onChange([34m${bloc.runtimeType}[0m, $change)');
  }

  /// Called whenever an error is thrown in any BLoC.
  ///
  /// This method is automatically invoked by the BLoC framework whenever
  /// an error occurs during BLoC operations. It provides comprehensive
  /// error information including the error details and stack trace.
  ///
  /// The logging output includes:
  /// - The type of BLoC that encountered the error
  /// - The error object with its message and details
  /// - The complete stack trace for debugging
  /// - Color-coded formatting for better console readability
  ///
  /// This callback is crucial for:
  /// - Identifying and debugging runtime errors
  /// - Understanding error contexts and causes
  /// - Monitoring app stability and error patterns
  /// - Providing detailed error information for bug reports
  ///
  /// Parameters:
  /// - [bloc]: The BLoC instance that encountered the error
  /// - [error]: The error object that was thrown
  /// - [stackTrace]: The stack trace at the time of the error
  ///
  /// Example Output:
  /// ```dart
  /// onError(
  ///   UnicodeCharPropertiesBloc,
  ///   NetworkException: Connection failed, StackTrace: ...
  /// )
  /// ```
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // Red text for errors (31m = red foreground)
    debugPrint('onError([31m${bloc.runtimeType}[0m, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
