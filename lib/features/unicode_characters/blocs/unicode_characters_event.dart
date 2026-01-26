part of 'unicode_characters_bloc.dart';

/// Event for the [UnicodeCharPropertiesBloc].
///
/// This class defines all the events that can be dispatched to the
/// UnicodeCharPropertiesBloc. Events represent user actions or system
/// requests that trigger state changes in the BLoC.
///
/// The events are implemented using Freezed for immutable data classes
/// with automatic equality, copyWith, and toString methods. This ensures
/// type safety and efficient state management.
///
/// Event Types:
/// - getCharacters: Requests fetching of Unicode characters with pagination
///
/// Usage:
/// ```dart
/// // Fetch first page of characters
/// bloc.add(const UnicodeCharPropertiesEvent.getCharacters(page: 1));
///
/// // Search for characters with query
/// bloc.add(const UnicodeCharPropertiesEvent.getCharacters(
///   page: 1,
///   searchQuery: 'heart',
/// ));
///
/// // Load next page
/// bloc.add(const UnicodeCharPropertiesEvent.getCharacters(page: 2));
/// ```
@freezed
abstract class UnicodeCharPropertiesEvent with _$UnicodeCharPropertiesEvent {
  /// Get characters event for fetching Unicode characters.
  ///
  /// This event triggers the fetching of Unicode characters from the
  /// database. It supports both initial loading and pagination, as well
  /// as search functionality.
  ///
  /// The event is debounced to prevent excessive API calls when users
  /// are typing quickly in search fields. The debounce delay is 1000ms
  /// to provide a good balance between responsiveness and performance.
  ///
  /// Parameters:
  /// - [page]: The page number to fetch (1 for first page, >1 for pagination)
  /// - [searchQuery]: Optional search term to filter characters by name or code
  ///
  /// Behavior:
  /// - Page 1: Replaces all existing characters (fresh search/load)
  /// - Page > 1: Appends new characters to existing list (pagination)
  /// - searchQuery: Filters characters by name, code, or other properties
  /// - Null searchQuery: Loads all characters without filtering
  ///
  /// Example:
  /// ```dart
  /// // Initial load without search
  /// const UnicodeCharPropertiesEvent.getCharacters(page: 1)
  ///
  /// // Search for specific characters
  /// const UnicodeCharPropertiesEvent.getCharacters(
  ///   page: 1,
  ///   searchQuery: 'smile',
  /// )
  ///
  /// // Load next page of search results
  /// const UnicodeCharPropertiesEvent.getCharacters(
  ///   page: 2,
  ///   searchQuery: 'smile',
  /// )
  /// ```
  const factory UnicodeCharPropertiesEvent.getCharacters({
    required int page,
    String? searchQuery,
  }) = _GetCharacters;
}
