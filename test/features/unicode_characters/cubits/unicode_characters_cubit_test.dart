import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/unicode_characters_cubit.dart';

void main() {
  group('UnicodeCharactersCubit', () {
    late UnicodeCharactersCubit cubit;

    setUp(() {
      cubit = UnicodeCharactersCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is UnicodeCharactersState.initial()', () {
      expect(cubit.state, isA<UnicodeCharactersState>());
    });

    test('loadUnicodeCharacters loads characters', () async {
      await cubit.loadUnicodeCharacters();
      expect(cubit.state, isA<UnicodeCharactersState>());
      // You can add more specific expectations if you mock the CSV loading
    });

    test(
      'loadUnicodeCharacters with filter returns filtered results',
      () async {
        await cubit.loadUnicodeCharacters();
        final allChars = cubit.state.characters;
        if (allChars.isNotEmpty) {
          final filter = allChars.first.character;
          await cubit.loadUnicodeCharacters(filter: filter);
          expect(
            cubit.state.filteredCharacters.any((c) => c.character == filter),
            isTrue,
          );
        }
      },
    );
  });
}
