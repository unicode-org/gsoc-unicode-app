part of 'remove_saved_character_cubit.dart';

/// State for the [RemoveSavedCharacterCubit].
///
/// This state is used to manage the state of the remove saved character.
/// It is used to store the character and the error message.
@freezed
class RemoveSavedCharacterState with _$RemoveSavedCharacterState {
  /// Initial state for remove saved character.
  const factory RemoveSavedCharacterState.initial() = _Initial;

  /// Removing state for remove saved character.
  const factory RemoveSavedCharacterState.removing() = _Removing;

  /// Removed state for remove saved character.
  const factory RemoveSavedCharacterState.removed({
    required UnicodeCharacter character,
  }) = _Removed;

  /// Error state for remove saved character.
  const factory RemoveSavedCharacterState.error({
    String? error,
  }) = _Error;
}
