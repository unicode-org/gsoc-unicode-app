/// Cubit for managing the state of a single recently viewed Unicode character.
///
/// Handles saving a character as recently viewed and updates the global list.
library;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/all_recent_characters_cubit.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'recently_viewed_character_state.dart';
part 'recently_viewed_character_cubit.freezed.dart';

/// Handles saving a Unicode character as recently viewed and updating the list.
///
/// Emits saving, saved, and error states. Notifies [AllRecentCharactersCubit] on changes.
class RecentlyViewedCharacterCubit extends Cubit<RecentlyViewedCharacterState> {
  /// Creates a [RecentlyViewedCharacterCubit] with a reference to the global list cubit.
  RecentlyViewedCharacterCubit({
    required AllRecentCharactersCubit allRecentCharactersCubit,
  })  : _allRecentCharactersCubit = allRecentCharactersCubit,
        super(const RecentlyViewedCharacterState.initial());

  /// Reference to the cubit managing the global list of recently viewed characters.
  final AllRecentCharactersCubit _allRecentCharactersCubit;

  /// Saves a character as recently viewed and updates the global list.
  ///
  /// Emits [_Saving], then [_Saved] or [_Error].
  Future<void> saveRecentlyViewedCharacter({
    required UnicodeCharacter character,
  }) async {
    try {
      emit(const _Saving());
      await AppStorage.saveRecentlyViewedCharacter(character);
      emit(_Saved(character: character));
      await _allRecentCharactersCubit.getAllRecentlyViewedCharacters();
    } catch (e) {
      emit(_Error(error: e.toString()));
      await _allRecentCharactersCubit.getAllRecentlyViewedCharacters();
    }
  }
}
