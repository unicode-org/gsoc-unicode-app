part of 'all_recent_characters_cubit.dart';

/// State for the [AllRecentCharactersCubit].
///
/// This state is used to manage the state of the all recently viewed
/// characters.
/// It is used to store the characters and the error message.
@freezed
class AllRecentCharactersState with _$AllRecentCharactersState {
  /// Initial state for all recently viewed characters.
  const factory AllRecentCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Initial;

  /// Loading state for all recently viewed characters.
  const factory AllRecentCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Loading;

  /// Loaded state for all recently viewed characters.
  const factory AllRecentCharactersState.loaded({
    required List<UnicodeCharacter> characters,
  }) = _Loaded;

  /// Error state for all recently viewed characters.
  const factory AllRecentCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Error;
}
