part of 'saved_characters_cubit.dart';

/// State for the [SavedCharactersCubit].
///
/// This state is used to manage the state of the saved characters.
/// It is used to store the characters and the error message.
@freezed
class SavedCharactersState with _$SavedCharactersState {
  /// Initial state for saved characters.
  const factory SavedCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Initial;

  /// Loading state for saved characters.
  const factory SavedCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Loading;

  /// Loaded state for saved characters.
  const factory SavedCharactersState.loaded({
    required List<UnicodeCharacter> characters,
  }) = _Loaded;

  /// Error state for saved characters.
  const factory SavedCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Error;
}
