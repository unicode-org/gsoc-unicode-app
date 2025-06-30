part of 'save_character_cubit.dart';

@freezed
class SaveCharacterState with _$SaveCharacterState {
  const factory SaveCharacterState.initial() = _Initial;
  const factory SaveCharacterState.saving() = _Saving;
  const factory SaveCharacterState.saved({
    required UnicodeCharacter character,
  }) = _Saved;
  const factory SaveCharacterState.error({
    String? error,
  }) = _Error;
}
