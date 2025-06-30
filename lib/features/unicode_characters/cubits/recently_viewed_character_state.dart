part of 'recently_viewed_character_cubit.dart';

@freezed
class RecentlyViewedCharacterState with _$RecentlyViewedCharacterState {
  const factory RecentlyViewedCharacterState.initial() = _Initial;
  const factory RecentlyViewedCharacterState.saving() = _Saving;
  const factory RecentlyViewedCharacterState.saved({
    required UnicodeCharacter character,
  }) = _Saved;
  const factory RecentlyViewedCharacterState.error({
    String? error,
  }) = _Error;
}
