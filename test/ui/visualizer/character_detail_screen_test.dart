import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/all_recent_characters_cubit.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/recently_viewed_character_cubit.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/remove_saved_character_cubit.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/save_character_cubit.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/saved_characters_cubit.dart';
import 'package:gsoc_unicode_app/models/unicode_character_model.dart';
import 'package:gsoc_unicode_app/ui/visualizer/views/character_detail_screen.dart';

class FakeSavedCharactersCubit extends SavedCharactersCubit {
  FakeSavedCharactersCubit(this._state) : super();
  final SavedCharactersState _state;
  @override
  SavedCharactersState get state => _state;
}

class FakeAllRecentCharactersCubit extends AllRecentCharactersCubit {}

class FakeRecentlyViewedCharacterCubit extends RecentlyViewedCharacterCubit {
  FakeRecentlyViewedCharacterCubit({required super.allRecentCharactersCubit});
}

class FakeSaveCharacterCubit extends SaveCharacterCubit {
  FakeSaveCharacterCubit({required super.savedCharactersCubit});
}

class FakeRemoveSavedCharacterCubit extends RemoveSavedCharacterCubit {
  FakeRemoveSavedCharacterCubit({required super.savedCharactersCubit});
}

void main() {
  testWidgets(
    'CharacterDetailScreen displays character info and save/remove button',
    (tester) async {
      const character = UnicodeCharacter(
        character: 'A',
        characterName: 'LATIN CAPITAL LETTER A',
        codePoint: 'U+0041',
        block: 'Basic Latin',
        plane: 'BMP',
        category: 'Letter',
      );
      final fakeSavedCubit = FakeSavedCharactersCubit(
        const SavedCharactersState.loaded(characters: [character]),
      );
      final fakeAllRecentCubit = FakeAllRecentCharactersCubit();
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<SavedCharactersCubit>.value(value: fakeSavedCubit),
            BlocProvider<AllRecentCharactersCubit>.value(
              value: fakeAllRecentCubit,
            ),
            BlocProvider<RecentlyViewedCharacterCubit>.value(
              value: FakeRecentlyViewedCharacterCubit(
                allRecentCharactersCubit: fakeAllRecentCubit,
              ),
            ),
            BlocProvider<SaveCharacterCubit>.value(
              value: FakeSaveCharacterCubit(
                savedCharactersCubit: fakeSavedCubit,
              ),
            ),
            BlocProvider<RemoveSavedCharacterCubit>.value(
              value: FakeRemoveSavedCharacterCubit(
                savedCharactersCubit: fakeSavedCubit,
              ),
            ),
          ],
          child: const MaterialApp(
            home: CharacterDetailScreen(character: character),
          ),
        ),
      );
      expect(find.text('A'), findsWidgets);
      expect(find.text('LATIN CAPITAL LETTER A'), findsOneWidget);
      expect(find.text('U+0041'), findsOneWidget);
      expect(find.byIcon(Icons.bookmark_sharp), findsOneWidget);
    },
  );
}
