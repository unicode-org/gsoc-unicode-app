import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:mockito/mockito.dart';

class MockSavedCharactersCubit extends Mock implements SavedCharactersCubit {}

void main() {
  group('RemoveSavedCharacterCubit', () {
    late RemoveSavedCharacterCubit cubit;
    late MockSavedCharactersCubit mockSavedCharactersCubit;

    setUp(() {
      mockSavedCharactersCubit = MockSavedCharactersCubit();
      cubit = RemoveSavedCharacterCubit(
        savedCharactersCubit: mockSavedCharactersCubit,
      );
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is RemoveSavedCharacterState.initial()', () {
      expect(cubit.state, isA<RemoveSavedCharacterState>());
    });
    // You can add more tests for error handling by mocking AppStorage to throw
  });
}
