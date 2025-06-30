part of 'saved_characters_cubit.dart';

@freezed
class SavedCharactersState with _$SavedCharactersState {
  const factory SavedCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Initial;
  const factory SavedCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Loading;
  const factory SavedCharactersState.loaded({
    required List<UnicodeCharacter> characters,
  }) = _Loaded;
  const factory SavedCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Error;
}
