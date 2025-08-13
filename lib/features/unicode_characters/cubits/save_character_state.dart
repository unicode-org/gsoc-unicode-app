part of 'save_character_cubit.dart';

/// State for the [SaveCharacterCubit].
///
/// This state is used to manage the state of the save character.
/// It is used to store the character and the error message.
@freezed
class SaveCharacterState with _$SaveCharacterState {
  /// Initial state for save character.
  const factory SaveCharacterState.initial() = _Initial;

  /// Saving state for save character.
  const factory SaveCharacterState.saving() = _Saving;

  /// Saved state for save character.
  const factory SaveCharacterState.saved({
    required UnicodeCharProperties character,
  }) = _Saved;

  /// Error state for save character.
  const factory SaveCharacterState.error({
    String? error,
  }) = _Error;
}
