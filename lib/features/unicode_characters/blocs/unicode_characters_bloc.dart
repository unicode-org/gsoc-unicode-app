/// BLoC for managing Unicode characters data and operations.
///
/// The UnicodeCharPropertiesBloc is responsible for managing the state and
/// operations related to Unicode characters in the app. It handles fetching
/// characters from the Unicode database, managing pagination, and providing
/// search functionality with debounced input.
///
/// This BLoC implements a debounced search pattern to prevent excessive
/// API calls when users are typing in search fields. It maintains the
/// current state of characters, pagination information, and error handling
/// for a robust user experience.
///
/// Key Features:
/// - Debounced search with configurable delay (1000ms)
/// - Pagination support for large character datasets
/// - Error handling with state preservation
/// - Efficient state management using Freezed
/// - Integration with dart_icu4x for Unicode data
///
/// State Management:
/// - Initial: App startup state
/// - Loading: Fetching characters with loading indicator
/// - Loaded: Successfully loaded characters with pagination info
/// - Error: Error state with preserved character data
///
/// Usage:
/// ```dart
/// final bloc = context.read<UnicodeCharPropertiesBloc>();
/// bloc.add(const UnicodeCharPropertiesEvent.getCharacters(page: 1));
/// ```
library;

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'unicode_characters_event.dart';
part 'unicode_characters_state.dart';
part 'unicode_characters_bloc.freezed.dart';

/// Debounce transformer for BLoC events to prevent excessive API calls.
///
/// This transformer applies a debounce delay to events, ensuring that
/// only the most recent event in a series of rapid events is processed.
/// This is particularly useful for search functionality where users
/// type quickly and we want to avoid making API calls for every keystroke.
///
/// The transformer uses RxDart's debounceTime operator to implement
/// the debouncing behavior. It's configured with a 1000ms delay to
/// provide a good balance between responsiveness and performance.
///
/// Parameters:
/// - [duration]: The delay duration before processing events
///
/// Returns:
/// - An EventTransformer that applies debouncing to events
///
/// Example:
/// ```dart
/// EventTransformer<Event> debounceTransformer<Event>(Duration duration) {
///   return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
/// }
/// ```
EventTransformer<Event> debounceTransformer<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

/// BLoC for managing Unicode characters.
///
/// This bloc is responsible for fetching and managing Unicode characters.
/// It uses the [getUnicodeCharProperties] function to fetch characters.
/// It emits different states based on the current state of the bloc.
/// It also emits an error state if there is an error fetching the characters.
///
/// The BLoC implements a debounced search pattern to optimize performance
/// and user experience. It maintains pagination state and preserves
/// existing character data during loading and error states.
///
/// Architecture:
/// - Events: Define user actions (search, pagination)
/// - States: Represent the current data and UI state
/// - BLoC: Orchestrates the flow between events and states
///
/// Error Handling:
/// - Catches exceptions during character fetching
/// - Preserves existing character data in error states
/// - Provides error messages for debugging
/// - Gracefully degrades without crashing the app
class UnicodeCharPropertiesBloc
    extends Bloc<UnicodeCharPropertiesEvent, UnicodeCharPropertiesState> {
  /// Constructor for the [UnicodeCharPropertiesBloc].
  ///
  /// Initializes the bloc with the initial state and sets up event
  /// handlers. The constructor registers the [_GetCharacters] event
  /// handler with a debounce transformer to prevent excessive API calls.
  ///
  /// The debounce transformer is configured with a 1000ms delay,
  /// which provides a good balance between responsiveness and
  /// performance for search operations.
  UnicodeCharPropertiesBloc() : super(const _Initial()) {
    on<_GetCharacters>(
      _onGetCharacters,
      transformer: debounceTransformer(const Duration(milliseconds: 500)),
    );
  }

  /// Event handler for the [_GetCharacters] event.
  ///
  /// This method handles character fetching requests from the UI.
  /// It manages the loading state, fetches characters from the Unicode
  /// database, and updates the state accordingly. The method supports
  /// both initial loading and pagination scenarios.
  ///
  /// The method implements a robust error handling strategy:
  /// - Catches exceptions during character fetching
  /// - Preserves existing character data in error states
  /// - Provides detailed error information for debugging
  /// - Maintains pagination state across error conditions
  ///
  /// Parameters:
  /// - [event]: The GetCharacters event containing search query and page info
  /// - [emit]: Function to emit new states
  ///
  /// State Transitions:
  /// - Initial/Loaded → Loading (with preserved characters)
  /// - Loading → Loaded (with new characters)
  /// - Any state → Error (with preserved characters and error info)
  ///
  /// Pagination Logic:
  /// - Page 1: Replaces all characters (fresh search)
  /// - Page > 1: Appends new characters to existing list
  /// - Maintains existing characters during loading states
  Future<void> _onGetCharacters(
    _GetCharacters event,
    Emitter<UnicodeCharPropertiesState> emit,
  ) async {
    try {
      // Emit loading state while preserving existing characters
      emit(
        _Loading(
          characters: state.characters,
          pageNo: state.pageNo,
          showLoadMore: true,
        ),
      );

      // Fetch characters from the Unicode database
      final charProperties = getUnicodeCharProperties(
        search: event.searchQuery,
        offset: BigInt.from(state.characters.length),
        limit: BigInt.from(50),
      );

      // Emit loaded state with appropriate character list
      emit(
        _Loaded(
          characters: event.page == 1
              ? charProperties // Fresh search: replace all characters
              : [
                  ...state.characters, // Pagination: append new characters
                  ...charProperties,
                ],
          pageNo: event.page,
          showLoadMore: true,
        ),
      );
    } on Exception catch (e) {
      // Emit error state while preserving existing characters
      emit(
        _Error(
          characters: state.characters,
          pageNo: state.pageNo,
          showLoadMore: state.showLoadMore,
          error: e.toString(),
        ),
      );
    }
  }
}
