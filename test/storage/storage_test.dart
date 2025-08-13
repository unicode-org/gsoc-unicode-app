import 'dart:convert';

import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/storage/storage_keys.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('AppStorage', () {
    late UnicodeCharProperties character;

    setUp(() {
      character = createTestCharacter();
    });

    group('test helpers', () {
      test('createTestCharacter creates valid character', () {
        final testChar = createTestCharacter();
        expect(testChar.character, 'A');
        expect(testChar.name, 'LATIN CAPITAL LETTER A');
        expect(testChar.unicodeValue, 'U+0041');
        expect(testChar.codePoint, 0x0041);
        expect(testChar.block, 'Basic Latin');
        expect(testChar.plane, 'BMP');
        expect(testChar.generalCategory, 'Lu');
      });

      test('createTestEmoji creates valid emoji', () {
        final emoji = createTestEmoji();
        expect(emoji.character, '😀');
        expect(emoji.name, 'GRINNING FACE');
        expect(emoji.unicodeValue, 'U+1F600');
        expect(emoji.codePoint, 0x1F600);
        expect(emoji.isEmoji, true);
        expect(emoji.isEmojiPresentation, true);
      });
    });

    group('JSON serialization', () {
      test('character converts to JSON correctly', () {
        final json = character.toJson();
        expect(json['character'], 'A');
        expect(json['name'], 'LATIN CAPITAL LETTER A');
        expect(json['unicodeValue'], 'U+0041');
        expect(json['codePoint'], 0x0041);
        expect(json['block'], 'Basic Latin');
        expect(json['plane'], 'BMP');
        expect(json['generalCategory'], 'Lu');
      });

      test('JSON can be encoded and decoded', () {
        final json = character.toJson();
        final encoded = jsonEncode(json);
        final decoded = jsonDecode(encoded) as Map<String, dynamic>;
        expect(decoded['character'], 'A');
        expect(decoded['name'], 'LATIN CAPITAL LETTER A');
        expect(decoded['unicodeValue'], 'U+0041');
      });
    });

    group('character properties', () {
      test('letter has correct boolean properties', () {
        final letter = createTestCharacter();
        expect(letter.isAlphabetic, true);
        expect(letter.isUppercase, true);
        expect(letter.isLowercase, false);
        expect(letter.isWhiteSpace, false);
        expect(letter.isMath, false);
        expect(letter.isDash, false);
        expect(letter.isDiacritic, false);
        expect(letter.isEmoji, false);
        expect(letter.isEmojiPresentation, false);
        expect(letter.isEmojiModifier, false);
        expect(letter.isEmojiModifierBase, false);
      });

      test('emoji has correct boolean properties', () {
        final emoji = createTestEmoji();
        expect(emoji.isAlphabetic, false);
        expect(emoji.isUppercase, false);
        expect(emoji.isLowercase, false);
        expect(emoji.isWhiteSpace, false);
        expect(emoji.isMath, false);
        expect(emoji.isDash, false);
        expect(emoji.isDiacritic, false);
        expect(emoji.isEmoji, true);
        expect(emoji.isEmojiPresentation, true);
        expect(emoji.isEmojiModifier, false);
        expect(emoji.isEmojiModifierBase, false);
      });
    });

    group('equality and comparison', () {
      test('identical characters are equal', () {
        final char1 = createTestCharacter();
        final char2 = createTestCharacter();
        expect(char1, equals(char2));
      });

      test('different characters are not equal', () {
        final char1 = createTestCharacter();
        final char2 = createTestCharacter(character: 'B');
        expect(char1, isNot(equals(char2)));
      });
    });

    group('storage keys', () {
      test('storage keys are defined', () {
        expect(savedCharactersKey, isNotEmpty);
        expect(recentCharacterKey, isNotEmpty);
        expect(boxName, isNotEmpty);
      });

      test('storage keys are different', () {
        expect(savedCharactersKey, isNot(equals(recentCharacterKey)));
      });
    });
  });
}
