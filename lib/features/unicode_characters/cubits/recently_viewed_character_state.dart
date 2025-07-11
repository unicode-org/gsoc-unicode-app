part of 'recently_viewed_character_cubit.dart';

/// State for the [RecentlyViewedCharacterCubit].
///
/// This state is used to manage the state of the recently viewed character.
/// It is used to store the character and the error message.
@freezed
class RecentlyViewedCharacterState with _$RecentlyViewedCharacterState {
  /// Initial state for recently viewed character.
  const factory RecentlyViewedCharacterState.initial() = _Initial;

  /// Saving state for recently viewed character.
  const factory RecentlyViewedCharacterState.saving() = _Saving;

  /// Saved state for recently viewed character.
  const factory RecentlyViewedCharacterState.saved({
    required UnicodeCharacter character,
  }) = _Saved;

  /// Error state for recently viewed character.
  const factory RecentlyViewedCharacterState.error({
    String? error,
  }) = _Error;
}
