import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_test/flutter_test.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('UnicodeCharProperties', () {
    test('creates UnicodeCharProperties with test helper', () {
      final character = createTestCharacter();
      expect(character.character, 'A');
      expect(character.name, 'LATIN CAPITAL LETTER A');
      expect(character.unicodeValue, 'U+0041');
      expect(character.codePoint, 0x0041);
      expect(character.block, 'Basic Latin');
      expect(character.plane, 'BMP');
      expect(character.generalCategory, 'Lu');
    });

    test('creates emoji UnicodeCharProperties with test helper', () {
      final emoji = createTestEmoji();
      expect(emoji.character, '😀');
      expect(emoji.name, 'GRINNING FACE');
      expect(emoji.unicodeValue, 'U+1F600');
      expect(emoji.codePoint, 0x1F600);
      expect(emoji.block, 'Emoticons');
      expect(emoji.plane, 'SMP');
      expect(emoji.generalCategory, 'So');
      expect(emoji.isEmoji, true);
      expect(emoji.isEmojiPresentation, true);
    });

    test('converts to JSON correctly', () {
      final character = createTestCharacter();
      final json = character.toJson();
      expect(json['character'], 'A');
      expect(json['name'], 'LATIN CAPITAL LETTER A');
      expect(json['unicodeValue'], 'U+0041');
      expect(json['codePoint'], 0x0041);
      expect(json['block'], 'Basic Latin');
      expect(json['plane'], 'BMP');
      expect(json['generalCategory'], 'Lu');
    });

    test('equality works correctly', () {
      final character1 = createTestCharacter();
      final character2 = createTestCharacter();
      final character3 =
          createTestCharacter(character: 'B', name: 'LATIN CAPITAL LETTER B');

      expect(character1, equals(character2));
      expect(character1, isNot(equals(character3)));
    });

    test('has correct boolean properties for letter', () {
      final character = createTestCharacter();
      expect(character.isAlphabetic, true);
      expect(character.isUppercase, true);
      expect(character.isLowercase, false);
      expect(character.isWhiteSpace, false);
      expect(character.isMath, false);
      expect(character.isDash, false);
      expect(character.isDiacritic, false);
      expect(character.isEmoji, false);
      expect(character.isEmojiPresentation, false);
      expect(character.isEmojiModifier, false);
      expect(character.isEmojiModifierBase, false);
    });

    test('has correct boolean properties for emoji', () {
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
}
