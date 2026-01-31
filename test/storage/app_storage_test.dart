// This test is disabeld for now because it fails due to the inability to mock
// Hive. Once we're able to mock Hive for storage test, it would be enabled back

// import 'dart:convert';

// import 'package:dart_icu4x/dart_icu4x.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:gsoc_unicode_app/storage/app_storage.dart';
// import 'package:gsoc_unicode_app/storage/storage_keys.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mockito/annotations.dart';
// import '../helpers/test_helpers.dart';

// class MockBox extends Mock implements Box<String> {
//   @override
//   Future<void> put(String key, String value) async {}
// }

// void main() {
//   group('AppStorage', () {
//     late MockBox mockBox;
//     late UnicodeCharProperties character;

//     setUp(() {
//       mockBox = MockBox();
//       AppStorage.testBox = mockBox;
//       character = createTestCharacter();
//     });

//     test('getSavedCharacters returns list from storage', () {
//       final encoded = jsonEncode([character.toJson()]);
//       when(mockBox.get(savedCharactersKey)).thenReturn(encoded);

//       final result = AppStorage.getSavedCharacters();

//       expect(result, isA<List<UnicodeCharProperties>>());
//       expect(result.first.character, 'A');
//       verify(mockBox.get(savedCharactersKey)).called(1);
//     });

//     test('getSavedCharacters returns empty list when no data exists', () {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);

//       final result = AppStorage.getSavedCharacters();

//       expect(result, isEmpty);
//       verify(mockBox.get(savedCharactersKey)).called(1);
//     });

//     test('getSavedCharacters handles invalid JSON gracefully', () {
//       when(mockBox.get(savedCharactersKey)).thenReturn('invalid json');

//       final result = AppStorage.getSavedCharacters();

//       expect(result, isEmpty);
//       verify(mockBox.get(savedCharactersKey)).called(1);
//     });

//     test('getSavedCharacters handles empty string gracefully', () {
//       when(mockBox.get(savedCharactersKey)).thenReturn('');

//       final result = AppStorage.getSavedCharacters();

//       expect(result, isEmpty);
//       verify(mockBox.get(savedCharactersKey)).called(1);
//     });

//     test('saveCharacter adds character to saved list', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       await AppStorage.saveCharacter(character);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);
//     });

//     test('saveCharacter adds character to beginning of existing list',
//         () async {
//       final existingCharacter = createTestCharacter(character: 'B');
//       final existingList = [existingCharacter];
//       final encoded = 
//       jsonEncode(existingList.map((c) => c.toJson()).toList());

//       when(mockBox.get(savedCharactersKey)).thenReturn(encoded);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       await AppStorage.saveCharacter(character);

//       // Verify the new character is added at the beginning
//       final capturedArg = verify(mockBox.put(savedCharactersKey, captureAny))
//           .captured
//           .single as String;
//       final savedList = jsonDecode(capturedArg) as List;
//       expect(
//           savedList.first['character'], 'A'); // New character should be first
//       expect(savedList.length, 2);
//     });

//     test('saveCharacter handles storage errors gracefully', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenThrow(Exception('Storage error'));

//       // Should not throw
//       await AppStorage.saveCharacter(character);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);
//     });

//     test('getRecentlyViewedCharacters returns list from storage', () {
//       final encoded = jsonEncode([character.toJson()]);
//       when(mockBox.get(recentCharacterKey)).thenReturn(encoded);

//       final result = AppStorage.getRecentlyViewedCharacters();

//       expect(result, isA<List<UnicodeCharProperties>>());
//       expect(result.first.character, 'A');
//       verify(mockBox.get(recentCharacterKey)).called(1);
//     });

//     test('getRecentlyViewedCharacters returns empty list 
//.    when no data exists',
//         () {
//       when(mockBox.get(recentCharacterKey)).thenReturn(null);

//       final result = AppStorage.getRecentlyViewedCharacters();

//       expect(result, isEmpty);
//       verify(mockBox.get(recentCharacterKey)).called(1);
//     });

//     test('getRecentlyViewedCharacters handles invalid JSON gracefully', () {
//       when(mockBox.get(recentCharacterKey)).thenReturn('invalid json');

//       final result = AppStorage.getRecentlyViewedCharacters();

//       expect(result, isEmpty);
//       verify(mockBox.get(recentCharacterKey)).called(1);
//     });

//     test('removeCharacter removes character from saved list', () async {
//       final existingList = [character];
//       final encoded = 
//.      jsonEncode(existingList.map((c) => c.toJson()).toList());

//       when(mockBox.get(savedCharactersKey)).thenReturn(encoded);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       await AppStorage.removeCharacter(character);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);

//       // Verify the character was removed
//       final capturedArg = verify(mockBox.put(savedCharactersKey, captureAny))
//           .captured
//           .single as String;
//       final updatedList = jsonDecode(capturedArg) as List;
//       expect(updatedList, isEmpty);
//     });

//     test('removeCharacter handles character not in list gracefully', () 
//     async {
//       final existingList = [character];
//       final encoded = 
//       jsonEncode(existingList.map((c) => c.toJson()).toList());

//       when(mockBox.get(savedCharactersKey)).thenReturn(encoded);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       final nonExistentCharacter = createTestCharacter(character: 'B');
//       await AppStorage.removeCharacter(nonExistentCharacter);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);

//       // Verify the list remains unchanged
//       final capturedArg = verify(mockBox.put(savedCharactersKey, captureAny))
//           .captured
//           .single as String;
//       final updatedList = jsonDecode(capturedArg) as List;
//       expect(updatedList.length, 1);
//       expect(updatedList.first['character'], 'A');
//     });

//     test('removeCharacter handles empty list gracefully', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       await AppStorage.removeCharacter(character);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);

//       // Verify empty list is stored
//       final capturedArg = verify(mockBox.put(savedCharactersKey, captureAny))
//           .captured
//           .single as String;
//       final updatedList = jsonDecode(capturedArg) as List;
//       expect(updatedList, isEmpty);
//     });

//     test('removeCharacter handles storage errors gracefully', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenThrow(Exception('Storage error'));

//       // Should not throw
//       await AppStorage.removeSavedCharacter(character);

//       verify(mockBox.put(savedCharactersKey, any)).called(1);
//     });

//     test('boxInitialized returns true when box is available', () {
//       AppStorage.testBox = mockBox;

//       final result = AppStorage.boxInitialized();

//       expect(result, isTrue);
//     });

//     test('boxInitialized returns false when box is null', () {
//       AppStorage.testBox = null;

//       final result = AppStorage.boxInitialized();

//       expect(result, isFalse);
//     });

//     test('handles multiple save operations correctly', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       final character1 = createTestCharacter();
//       final character2 = createTestCharacter(character: 'B');
//       final character3 = createTestCharacter(character: 'C');

//       await AppStorage.saveCharacter(character1);
//       await AppStorage.saveCharacter(character2);
//       await AppStorage.saveCharacter(character3);

//       // Verify multiple put operations
//       verify(mockBox.put(savedCharactersKey, any)).called(3);
//     });

//     test('handles mixed operations correctly', () async {
//       when(mockBox.get(savedCharactersKey)).thenReturn(null);
//       when(mockBox.put(any, any)).thenAnswer((_) async {});

//       // Save a character
//       await AppStorage.saveCharacter(character);

//       // Remove it
//       await AppStorage.removeCharacter(character);

//       // Verify operations were performed
//       verify(mockBox.put(savedCharactersKey, any)).called(2);
//     });
//   });
// }
