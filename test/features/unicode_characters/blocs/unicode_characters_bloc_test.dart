import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/blocs/unicode_characters_bloc.dart';
import '../../../helpers/test_helpers.dart';

void main() {
  group('UnicodeCharPropertiesBloc', () {
    test('initial state is UnicodeCharPropertiesState.initial()', () {
      // Test the initial state directly without creating the bloc
      const initialState = UnicodeCharPropertiesState.initial();
      expect(initialState.characters, isEmpty);
      expect(initialState.pageNo, 1);
      expect(initialState.showLoadMore, false);
    });

    test('loading state has correct properties', () {
      const loadingState = UnicodeCharPropertiesState.loading(
        characters: [],
        pageNo: 1,
      );
      expect(loadingState.characters, isEmpty);
      expect(loadingState.pageNo, 1);
      expect(loadingState.showLoadMore, false);
    });

    test('loaded state has correct properties', () {
      final character = createTestCharacter();
      final loadedState = UnicodeCharPropertiesState.loaded(
        characters: [character],
        pageNo: 2,
        showLoadMore: true,
      );
      expect(loadedState.characters.length, 1);
      expect(loadedState.pageNo, 2);
      expect(loadedState.showLoadMore, true);
      expect(loadedState.characters.first.character, 'A');
    });

    test('error state has correct properties', () {
      const errorState = UnicodeCharPropertiesState.error(
        characters: [],
        pageNo: 1,
        error: 'Test error',
      );
      expect(errorState.characters, isEmpty);
      expect(errorState.pageNo, 1);
      expect(errorState.showLoadMore, false);
      //expect(errorState.error, 'Test error');
    });

    test('state equality works correctly', () {
      const state1 = UnicodeCharPropertiesState.initial();
      const state2 = UnicodeCharPropertiesState.initial();
      const state3 = UnicodeCharPropertiesState.loading(
        characters: [],
        pageNo: 1,
      );

      expect(state1, equals(state2));
      expect(state1, isNot(equals(state3)));
    });

    test('state copyWith works correctly', () {
      final character = createTestCharacter();
      final originalState = UnicodeCharPropertiesState.loaded(
        characters: [character],
        pageNo: 1,
      );

      final modifiedState = originalState.copyWith(
        pageNo: 2,
        showLoadMore: true,
      );

      expect(modifiedState.characters, equals(originalState.characters));
      expect(modifiedState.pageNo, 2);
      expect(modifiedState.showLoadMore, true);
    });

    test('state toString works correctly', () {
      const state = UnicodeCharPropertiesState.initial();
      final string = state.toString();
      expect(string, contains('UnicodeCharPropertiesState'));
    });

    test('event equality works correctly', () {
      const event1 = UnicodeCharPropertiesEvent.getCharacters(page: 1);
      const event2 = UnicodeCharPropertiesEvent.getCharacters(page: 1);
      const event3 = UnicodeCharPropertiesEvent.getCharacters(
        page: 1,
        searchQuery: 'test',
      );

      expect(event1, equals(event2));
      expect(event1, isNot(equals(event3)));
    });

    test('event with search query has correct properties', () {
      const event = UnicodeCharPropertiesEvent.getCharacters(
        page: 2,
        searchQuery: 'A',
      );
      expect(event.page, 2);
      expect(event.searchQuery, 'A');
    });

    test('event without search query has correct properties', () {
      const event = UnicodeCharPropertiesEvent.getCharacters(page: 1);
      expect(event.page, 1);
      expect(event.searchQuery, isNull);
    });
  });
}
