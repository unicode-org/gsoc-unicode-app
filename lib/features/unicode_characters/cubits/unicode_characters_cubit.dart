/// Cubit for managing the list and search/filtering of Unicode characters.
///
/// Loads all Unicode characters from a CSV asset and supports filtering by query.
library;

import 'dart:developer';

import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsoc_unicode_app/models/models.dart';

part 'unicode_characters_cubit.freezed.dart';
part 'unicode_characters_state.dart';

/// Handles the state of all Unicode characters and supports filtering.
///
/// Emits loading, loaded, and error states as it loads and filters data.
class UnicodeCharactersCubit extends Cubit<UnicodeCharactersState> {
  /// Creates a [UnicodeCharactersCubit] with an initial state.
  UnicodeCharactersCubit() : super(const UnicodeCharactersState.initial());

  /// Loads all Unicode characters from the CSV asset, optionally filtering by [filter].
  ///
  /// Emits [_Loading], then [_Loaded] with the list, or [_Error] on failure.
  Future<void> loadUnicodeCharacters({String? filter}) async {
    try {
      emit(
        _Loading(
          characters: state.characters,
          filteredCharacters: state.filteredCharacters,
        ),
      );
      if (filter?.isEmpty ?? false) {
        if (state.characters.isNotEmpty) {
          emit(
            _Loaded(
              characters: state.characters,
              filteredCharacters: state.characters,
            ),
          );
        } else {
          final characters = await _loadUnicodeCharactersFromCsv();
          emit(_Loaded(characters: characters, filteredCharacters: characters));
        }
      } else {
        final characters = state.characters.isNotEmpty
            ? state.characters
            : await _loadUnicodeCharactersFromCsv();
        final lowerQuery = filter?.toLowerCase() ?? '';
        final filteredCharacters = characters.where((char) {
          return char.character.toLowerCase().contains(lowerQuery) ||
              char.characterName.toLowerCase().contains(lowerQuery) ||
              char.codePoint.toLowerCase().contains(lowerQuery) ||
              char.block.toLowerCase().contains(lowerQuery) ||
              char.plane.toLowerCase().contains(lowerQuery) ||
              char.category.toLowerCase().contains(lowerQuery);
        }).toList();

        emit(
          _Loaded(
            characters: characters,
            filteredCharacters: filteredCharacters,
          ),
        );
      }
    } catch (e) {
      log(e.toString());
      emit(
        _Error(
          characters: state.characters,
          filteredCharacters: state.filteredCharacters,
          error: e.toString(),
        ),
      );
    }
  }

  /// Loads all Unicode characters from the CSV asset file.
  ///
  /// Returns a list of [UnicodeCharacter] objects.
  Future<List<UnicodeCharacter>> _loadUnicodeCharactersFromCsv() async {
    final rawCsv = await rootBundle.loadString('assets/unicode_dummy_data.csv');
    final csvTable = const CsvToListConverter(eol: '\n').convert(rawCsv);

    // Get headers
    final headers = csvTable.first.map((e) => e.toString()).toList();
    final rows = csvTable.skip(1);

    return rows.map((row) {
      final rowMap = <String, dynamic>{};
      for (var i = 0; i < headers.length; i++) {
        rowMap[headers[i]] = row[i]?.toString() ?? '';
      }
      return UnicodeCharacter.fromJson(rowMap);
    }).toList();
  }
}
