import 'dart:convert';

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/storage/app_storage.dart';
import 'package:gsoc_unicode_app/storage/storage_keys.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';
import '../helpers/test_helpers.dart';

class MockBox extends Mock implements Box<String> {}

void main() {
  late MockBox mockBox;
  late UnicodeCharProperties character;

  setUp(() {
    mockBox = MockBox();
    AppStorage.testBox = mockBox;
    character = createTestCharacter();
  });

  test('getSavedCharacters returns list from storage', () {
    final encoded = jsonEncode([character.toJson()]);
    when(mockBox.get(savedCharactersKey)).thenReturn(encoded);
    final result = AppStorage.getSavedCharacters();
    expect(result, isA<List<UnicodeCharProperties>>());
    expect(result.first.character, 'A');
  });
}
