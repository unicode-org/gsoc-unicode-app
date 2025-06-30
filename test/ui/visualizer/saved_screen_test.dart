import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/saved_characters_cubit.dart';
import 'package:gsoc_unicode_app/models/unicode_character_model.dart';
import 'package:gsoc_unicode_app/shared/character_tile.dart';
import 'package:gsoc_unicode_app/ui/visualizer/views/saved_screen.dart';

class FakeSavedCharactersCubit extends SavedCharactersCubit {
  FakeSavedCharactersCubit(this._state) : super();
  final SavedCharactersState _state;
  @override
  SavedCharactersState get state => _state;
}

void main() {
  testWidgets('SavedScreen shows empty state when no characters', (
    tester,
  ) async {
    final fakeCubit = FakeSavedCharactersCubit(
      const SavedCharactersState.loaded(characters: []),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<SavedCharactersCubit>.value(
          value: fakeCubit,
          child: const SavedScreen(),
        ),
      ),
    );
    expect(
      find.textContaining(
        'No saved characters',
        findRichText: true,
        skipOffstage: false,
      ),
      findsOneWidget,
    );
  });

  testWidgets('SavedScreen shows CharacterTile when characters are present', (
    tester,
  ) async {
    const character = UnicodeCharacter(
      character: 'A',
      characterName: 'LATIN CAPITAL LETTER A',
      codePoint: 'U+0041',
      block: 'Basic Latin',
      plane: 'BMP',
      category: 'Letter',
    );
    final fakeCubit = FakeSavedCharactersCubit(
      const SavedCharactersState.loaded(characters: [character]),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<SavedCharactersCubit>.value(
          value: fakeCubit,
          child: const SavedScreen(),
        ),
      ),
    );
    expect(find.byType(CharacterTile), findsOneWidget);
    expect(find.text('A'), findsOneWidget);
    expect(find.text('LATIN CAPITAL LETTER A'), findsOneWidget);
    expect(find.text('U+0041'), findsOneWidget);
  });
}
