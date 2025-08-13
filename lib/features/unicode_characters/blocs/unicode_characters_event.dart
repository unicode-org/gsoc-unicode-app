part of 'unicode_characters_bloc.dart';

/// Event for the [UnicodeCharPropertiesBloc].
@freezed
class UnicodeCharPropertiesEvent with _$UnicodeCharPropertiesEvent {
  /// Get characters event.
  const factory UnicodeCharPropertiesEvent.getCharacters({
    required int page,
    String? searchQuery,
  }) = _GetCharacters;
}
