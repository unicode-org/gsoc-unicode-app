import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/saved_characters_cubit.dart';

void main() {
  group('SavedCharactersCubit', () {
    late SavedCharactersCubit cubit;

    setUp(() {
      cubit = SavedCharactersCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is SavedCharactersState.initial()', () {
      expect(cubit.state, isA<SavedCharactersState>());
    });

    test('getSavedCharacters loads characters', () async {
      await cubit.getSavedCharacters();
      expect(cubit.state, isA<SavedCharactersState>());
      // Add more specific expectations if you mock AppStorage
    });
  });
}
