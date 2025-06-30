part of 'remove_saved_character_cubit.dart';

@freezed
class RemoveSavedCharacterState with _$RemoveSavedCharacterState {
  const factory RemoveSavedCharacterState.initial() = _Initial;
  const factory RemoveSavedCharacterState.removing() = _Removing;
  const factory RemoveSavedCharacterState.removed({
    required UnicodeCharacter character,
  }) = _Removed;
  const factory RemoveSavedCharacterState.error({
    String? error,
  }) = _Error;
}
