import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/storage/app_storage.dart';
import 'package:gsoc_unicode_app/storage/storage_keys.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';

class MockBox extends Mock implements Box<String> {}

void main() {
  late MockBox mockBox;
  late UnicodeCharacter character;

  setUp(() {
    mockBox = MockBox();
    AppStorage.testBox = mockBox;
    character = const UnicodeCharacter(
      character: 'A',
      characterName: 'LATIN CAPITAL LETTER A',
      codePoint: 'U+0041',
      block: 'Basic Latin',
      plane: 'BMP',
      category: 'Lu',
    );
  });

  test('getSavedCharacters returns list from storage', () {
    final encoded = jsonEncode([character.toJson()]);
    when(mockBox.get(savedCharactersKey)).thenReturn(encoded);
    final result = AppStorage.getSavedCharacters();
    expect(result, isA<List<UnicodeCharacter>>());
    expect(result.first.character, 'A');
  });
}
