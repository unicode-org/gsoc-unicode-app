import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/all_recent_characters_cubit.dart';

void main() {
  group('AllRecentCharactersCubit', () {
    late AllRecentCharactersCubit cubit;

    setUp(() {
      cubit = AllRecentCharactersCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is AllRecentCharactersState.initial()', () {
      expect(cubit.state, isA<AllRecentCharactersState>());
    });

    test('getAllRecentlyViewedCharacters loads characters', () async {
      await cubit.getAllRecentlyViewedCharacters();
      expect(cubit.state, isA<AllRecentCharactersState>());
      // Add more specific expectations if you mock AppStorage
    });
  });
}
