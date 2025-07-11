import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/models/unicode_character_model.dart';

void main() {
  group('UnicodeCharacter', () {
    test('fromJson and toJson work correctly', () {
      final json = {
        'Character': 'A',
        'Character Name': 'LATIN CAPITAL LETTER A',
        'Code Point': 'U+0041',
        'Block': 'Basic Latin',
        'Plane': 'BMP',
        'Category': 'Letter',
      };
      final character = UnicodeCharacter.fromJson(json);
      expect(character.character, 'A');
      expect(character.characterName, 'LATIN CAPITAL LETTER A');
      expect(character.codePoint, 'U+0041');
      expect(character.block, 'Basic Latin');
      expect(character.plane, 'BMP');
      expect(character.category, 'Letter');
      expect(character.toJson(), json);
    });

    test('equality works', () {
      const a = UnicodeCharacter(
        character: 'A',
        characterName: 'LATIN CAPITAL LETTER A',
        codePoint: 'U+0041',
        block: 'Basic Latin',
        plane: 'BMP',
        category: 'Letter',
      );
      const b = UnicodeCharacter(
        character: 'A',
        characterName: 'LATIN CAPITAL LETTER A',
        codePoint: 'U+0041',
        block: 'Basic Latin',
        plane: 'BMP',
        category: 'Letter',
      );
      expect(a, equals(b));
    });
  });
}
