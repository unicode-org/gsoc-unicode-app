import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/all_recent_characters_cubit.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/recently_viewed_character_cubit.dart';
import 'package:mockito/mockito.dart';

class MockAllRecentCharactersCubit extends Mock
    implements AllRecentCharactersCubit {}

void main() {
  group('RecentlyViewedCharacterCubit', () {
    late RecentlyViewedCharacterCubit cubit;
    late MockAllRecentCharactersCubit mockAllRecentCharactersCubit;

    setUp(() {
      mockAllRecentCharactersCubit = MockAllRecentCharactersCubit();
      cubit = RecentlyViewedCharacterCubit(
        allRecentCharactersCubit: mockAllRecentCharactersCubit,
      );
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is RecentlyViewedCharacterState.initial()', () {
      expect(cubit.state, isA<RecentlyViewedCharacterState>());
    });

    // You can add more tests for error handling by mocking AppStorage to throw
  });
}
