part of 'unicode_characters_cubit.dart';

/// State for the [UnicodeCharactersCubit].
///
/// This state is used to manage the state of the Unicode characters.
/// It is used to store the characters and the filtered characters.
/// It is also used to store the error message.
/// It is also used to store the loading state.
/// It is also used to store the loaded state.
@freezed
class UnicodeCharactersState with _$UnicodeCharactersState {
  /// Initial state for Unicode characters.
  const factory UnicodeCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Initial;

  /// Loading state for Unicode characters.
  const factory UnicodeCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Loading;

  /// Loaded state for Unicode characters.
  const factory UnicodeCharactersState.loaded({
    required List<UnicodeCharacter> characters,
    required List<UnicodeCharacter> filteredCharacters,
  }) = _Loaded;

  /// Error state for Unicode characters.
  const factory UnicodeCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Error;
}
