part of 'unicode_characters_bloc.dart';

/// State for the [UnicodeCharPropertiesBloc].
///
/// This class defines all the possible states that the
/// UnicodeCharPropertiesBloc can be in. Each state represents a different phase
/// of the character loading process and contains the relevant data for that
/// phase.
///
/// The states are implemented using Freezed for immutable data classes with
/// automatic equality, copyWith, and toString methods. This ensures type safety
/// and efficient state management throughout the app.
///
/// State Lifecycle:
/// 1. Initial: App startup, no characters loaded
/// 2. Loading: Fetching characters, showing loading indicator
/// 3. Loaded: Characters successfully loaded, ready for display
/// 4. Error: Error occurred, showing error message with preserved data
///
/// State Properties:
/// - characters: List of Unicode characters (preserved across state changes)
/// - pageNo: Current page number for pagination
/// - showLoadMore: Whether to show "load more" button
/// - error: Error message (only in error state)
///
/// Usage:
/// ```dart
/// BlocBuilder<UnicodeCharPropertiesBloc, UnicodeCharPropertiesState>(
///   builder: (context, state) {
///     return state.when(
///       initial: (characters, pageNo, showLoadMore) => InitialWidget(),
///       loading: (characters, pageNo, showLoadMore) =>
///             LoadingWidget(characters),
///       loaded: (characters, pageNo, showLoadMore) =>
///             CharactersList(characters),
///       error: (characters, pageNo, showLoadMore, error) =>
///             ErrorWidget(error),
///     );
///   },
/// )
/// ```
@freezed
abstract class UnicodeCharPropertiesState with _$UnicodeCharPropertiesState {
  /// Initial state for Unicode characters.
  ///
  /// This state represents the app startup condition where no characters
  /// have been loaded yet. It's the default state when the BLoC is first
  /// created and provides a clean starting point for the character loading
  /// process.
  ///
  /// Properties:
  /// - [characters]: Empty list (no characters loaded yet)
  /// - [pageNo]: Default page number (1)
  /// - [showLoadMore]: Default false (no more content to load)
  ///
  /// This state is typically shown briefly before transitioning to loading
  /// or loaded states. It's useful for displaying initial UI elements
  /// like welcome messages or empty state placeholders.
  const factory UnicodeCharPropertiesState.initial({
    @Default(<UnicodeCharProperties>[]) List<UnicodeCharProperties> characters,
    @Default(1) int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Initial;

  /// Loading state for Unicode characters.
  ///
  /// This state indicates that the BLoC is actively fetching characters
  /// from the Unicode database. It preserves any existing characters
  /// from previous states to maintain UI continuity during loading.
  ///
  /// Properties:
  /// - [characters]: Previously loaded characters (preserved for smooth UX)
  /// - [pageNo]: Current page number being loaded
  /// - [showLoadMore]: Whether more content can be loaded after this page
  ///
  /// During this state, the UI should show a loading indicator while
  /// maintaining the display of any previously loaded characters. This
  /// provides a smooth user experience without jarring transitions.
  const factory UnicodeCharPropertiesState.loading({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Loading;

  /// Loaded state for Unicode characters.
  ///
  /// This state represents the successful completion of a character
  /// loading operation. It contains the updated list of characters
  /// and pagination information for the next loading operation.
  ///
  /// Properties:
  /// - [characters]: Complete list of loaded characters (including new ones)
  /// - [pageNo]: Page number that was just loaded
  /// - [showLoadMore]: Whether more characters are available to load
  ///
  /// This state is the primary state for displaying character content
  /// to users. The showLoadMore flag helps determine whether to display
  /// pagination controls or "end of content" indicators.
  const factory UnicodeCharPropertiesState.loaded({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Loaded;

  /// Error state for Unicode characters.
  ///
  /// This state represents an error condition that occurred during
  /// character loading. It preserves all previously loaded characters
  /// and provides error information for debugging and user feedback.
  ///
  /// Properties:
  /// - [characters]: Previously loaded characters (preserved for continuity)
  /// - [pageNo]: Page number where the error occurred
  /// - [showLoadMore]: Whether more content was available before the error
  /// - [error]: Error message describing what went wrong
  ///
  /// This state allows the app to gracefully handle errors without
  /// losing user progress. Users can still interact with previously
  /// loaded characters while the error is displayed, and retry
  /// mechanisms can be implemented based on the error information.
  const factory UnicodeCharPropertiesState.error({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
    String? error,
  }) = _Error;
}
