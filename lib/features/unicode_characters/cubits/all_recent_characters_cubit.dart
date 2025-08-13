/// Cubit for managing the list of all recently viewed Unicode characters.
///
/// Loads and emits the list of recently viewed characters from storage.
library;

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';

part 'all_recent_characters_state.dart';
part 'all_recent_characters_cubit.freezed.dart';

/// Handles the state of all recently viewed Unicode characters.
///
/// Emits loading, loaded, and error states as it fetches data from storage.
class AllRecentCharactersCubit extends Cubit<AllRecentCharactersState> {
  /// Creates an [AllRecentCharactersCubit] with an initial state.
  AllRecentCharactersCubit() : super(const AllRecentCharactersState.initial());

  /// Loads all recently viewed Unicode characters from storage.
  ///
  /// Emits [_Loading], then [_Loaded] with the list, or [_Error] on failure.
  Future<void> getAllRecentlyViewedCharacters() async {
    try {
      emit(_Loading(characters: state.characters));
      final recentCharacters = AppStorage.getRecentlyViewedCharacters();
      emit(_Loaded(characters: recentCharacters));
    } on Exception catch (e) {
      emit(_Error(error: e.toString(), characters: state.characters));
    }
  }
}
