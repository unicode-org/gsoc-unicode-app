import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'save_character_cubit.freezed.dart';
part 'save_character_state.dart';

/// Handles saving a Unicode character to the saved list and updating the state.
///
/// Emits saving, saved, and error states. Notifies [SavedCharactersCubit] on
/// changes.
class SaveCharacterCubit extends Cubit<SaveCharacterState> {
  /// Creates a [SaveCharacterCubit] with a reference to the saved characters
  /// cubit.
  SaveCharacterCubit({
    required SavedCharactersCubit savedCharactersCubit,
  })  : _savedCharactersCubit = savedCharactersCubit,
        super(const SaveCharacterState.initial());

  // SavedCharactersCubit
  final SavedCharactersCubit _savedCharactersCubit;

  /// Saves a Unicode character to the saved list and updates the state.
  ///
  /// Emits [_Saving], then [_Saved] or [_Error].
  Future<void> saveCharacter({
    required UnicodeCharacter character,
  }) async {
    try {
      emit(const _Saving());
      await AppStorage.saveCharacter(character);
      emit(_Saved(character: character));
      await _savedCharactersCubit.getSavedCharacters();
    } on Exception catch (e) {
      emit(_Error(error: e.toString()));
      await _savedCharactersCubit.getSavedCharacters();
    }
  }
}
