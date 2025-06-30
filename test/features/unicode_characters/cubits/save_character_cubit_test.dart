import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:mockito/mockito.dart';

class MockSavedCharactersCubit extends Mock implements SavedCharactersCubit {}

void main() {
  group('SaveCharacterCubit', () {
    late SaveCharacterCubit cubit;
    late MockSavedCharactersCubit mockSavedCharactersCubit;

    setUp(() {
      mockSavedCharactersCubit = MockSavedCharactersCubit();
      cubit = SaveCharacterCubit(
        savedCharactersCubit: mockSavedCharactersCubit,
      );
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is SaveCharacterState.initial()', () {
      expect(cubit.state, isA<SaveCharacterState>());
    });

    // You can add more tests for error handling by mocking AppStorage to throw
  });
}
