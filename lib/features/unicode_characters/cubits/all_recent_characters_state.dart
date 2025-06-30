part of 'all_recent_characters_cubit.dart';

@freezed
class AllRecentCharactersState with _$AllRecentCharactersState {
  const factory AllRecentCharactersState.initial({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Initial;
  const factory AllRecentCharactersState.loading({
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Loading;
  const factory AllRecentCharactersState.loaded({
    required List<UnicodeCharacter> characters,
  }) = _Loaded;
  const factory AllRecentCharactersState.error({
    String? error,
    @Default(<UnicodeCharacter>[]) List<UnicodeCharacter> characters,
  }) = _Error;
}
