/// Cubit for managing the list of saved Unicode characters.
///
/// Loads and emits the list of saved characters from storage.
library;

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'saved_characters_state.dart';
part 'saved_characters_cubit.freezed.dart';

/// Handles the state of saved Unicode characters.
///
/// Emits loading, loaded, and error states as it fetches data from storage.
class SavedCharactersCubit extends Cubit<SavedCharactersState> {
  /// Creates a [SavedCharactersCubit] with an initial state.
  SavedCharactersCubit() : super(const SavedCharactersState.initial());

  /// Loads all saved Unicode characters from storage.
  ///
  /// Emits [_Loading], then [_Loaded] with the list, or [_Error] on failure.
  Future<void> getSavedCharacters() async {
    try {
      emit(_Loading(characters: state.characters));
      final savedCharacters = AppStorage.getSavedCharacters();
      emit(_Loaded(characters: savedCharacters));
    } on Exception catch (e) {
      emit(_Error(error: e.toString(), characters: state.characters));
    }
  }
}
