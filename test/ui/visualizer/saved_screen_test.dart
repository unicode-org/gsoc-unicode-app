import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/saved_characters_cubit.dart';
import 'package:gsoc_unicode_app/shared/character_tile.dart';
import 'package:gsoc_unicode_app/ui/visualizer/views/saved_screen.dart';
import '../../helpers/test_helpers.dart';

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
    final character = createTestCharacter();
    final fakeCubit = FakeSavedCharactersCubit(
      SavedCharactersState.loaded(characters: [character]),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<SavedCharactersCubit>.value(
          value: fakeCubit,
          child: const SavedScreen(),
        ),
      ),
    );

    // Wait for the widget to build
    await tester.pumpAndSettle();

    expect(find.byType(CharacterTile), findsOneWidget);
    expect(find.text('U+0041'), findsOneWidget);
    // Check for the character display (the large "A")
    expect(find.text('A'),
        findsNWidgets(2)); // One in character display, one in name
  });
}
