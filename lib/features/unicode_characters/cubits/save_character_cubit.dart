import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'save_character_cubit.freezed.dart';
part 'save_character_state.dart';

class SaveCharacterCubit extends Cubit<SaveCharacterState> {
  SaveCharacterCubit({
    required SavedCharactersCubit savedCharactersCubit,
  })  : _savedCharactersCubit = savedCharactersCubit,
        super(const SaveCharacterState.initial());

  // SavedCharactersCubit
  final SavedCharactersCubit _savedCharactersCubit;

  Future<void> saveCharacter({
    required UnicodeCharacter character,
  }) async {
    try {
      emit(const _Saving());
      await AppStorage.saveCharacter(character);
      emit(_Saved(character: character));
      await _savedCharactersCubit.getSavedCharacters();
    } catch (e) {
      emit(_Error(error: e.toString()));
      await _savedCharactersCubit.getSavedCharacters();
    }
  }
}
