/// Cubit for removing a Unicode character from the saved list.
///
/// Handles the removal process and updates the saved characters list.
library;

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'remove_saved_character_state.dart';
part 'remove_saved_character_cubit.freezed.dart';

/// Handles removing a Unicode character from the saved list and updating the
/// state.
///
/// Emits removing, removed, and error states. Notifies [SavedCharactersCubit]
/// on changes.
class RemoveSavedCharacterCubit extends Cubit<RemoveSavedCharacterState> {
  /// Creates a [RemoveSavedCharacterCubit] with a reference to the saved
  /// characters cubit.
  RemoveSavedCharacterCubit({
    required SavedCharactersCubit savedCharactersCubit,
  })  : _savedCharactersCubit = savedCharactersCubit,
        super(const RemoveSavedCharacterState.initial());

  /// Reference to the cubit managing the saved characters list.
  final SavedCharactersCubit _savedCharactersCubit;

  /// Removes a Unicode character from the saved list and updates the state.
  ///
  /// Emits [_Removing], then [_Removed] or [_Error].
  Future<void> removeCharacter(
      {required UnicodeCharProperties character}) async {
    try {
      emit(const _Removing());
      await AppStorage.removeCharacter(character);
      emit(_Removed(character: character));
      await _savedCharactersCubit.getSavedCharacters();
    } on Exception catch (e) {
      emit(_Error(error: e.toString()));
      await _savedCharactersCubit.getSavedCharacters();
    }
  }
}
