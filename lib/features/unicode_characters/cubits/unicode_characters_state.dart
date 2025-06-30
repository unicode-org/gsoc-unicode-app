part of 'unicode_characters_cubit.dart';

@freezed
class UnicodeCharactersState with _$UnicodeCharactersState {
  const factory UnicodeCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Initial;
  const factory UnicodeCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Loading;
  const factory UnicodeCharactersState.loaded({
    required List<UnicodeCharacter> characters,
    required List<UnicodeCharacter> filteredCharacters,
  }) = _Loaded;
  const factory UnicodeCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> filteredCharacters,
  }) = _Error;
}
