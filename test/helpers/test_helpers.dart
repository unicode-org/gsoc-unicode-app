/// Shared test helpers for the Unicode Flutter App tests.
library;

import 'package:dart_icu4x/dart_icu4x.dart';

/// Global flag to track if RustLib has been initialized
bool _isRustLibInitialized = false;

/// Initialize RustLib for tests that need it.
///
/// This should be called before any tests that use dart_icu4x functions.
/// It's safe to call multiple times as it will only initialize once.
Future<void> setupTestEnvironment() async {
  if (!_isRustLibInitialized) {
    try {
      await RustLib.init();
      _isRustLibInitialized = true;
    } catch (e) {
      // If initialization fails, we'll try again on next call
      _isRustLibInitialized = false;
      rethrow;
    }
  }
}

/// Initialize RustLib synchronously for tests that can't use async setup.
///
/// This should be used in test files that need RustLib but can't use async
/// setUpAll.
void initializeRustLibSync() {
  if (!_isRustLibInitialized) {
    try {
      // Force synchronous initialization
      RustLib.init();
      _isRustLibInitialized = true;
    } on Exception catch (_) {
      // If this fails, the test will fail anyway
      _isRustLibInitialized = false;
    }
  }
}

/// Helper function to create a test UnicodeCharProperties instance.
///
/// This function creates a UnicodeCharProperties object with all required
/// parameters set to reasonable test values. The default character is 'A'
/// (LATIN CAPITAL LETTER A).
UnicodeCharProperties createTestCharacter({
  String character = 'A',
  String name = 'LATIN CAPITAL LETTER A',
  String unicodeValue = 'U+0041',
  int codePoint = 0x0041,
  String block = 'Basic Latin',
  String plane = 'BMP',
  String generalCategory = 'Lu',
}) {
  return UnicodeCharProperties(
    character: character,
    name: name,
    unicodeValue: unicodeValue,
    codePoint: codePoint,
    block: block,
    plane: plane,
    generalCategory: generalCategory,
    script: 'Latn',
    bidiClass: 'L',
    eastAsianWidth: 'Na',
    lineBreak: 'AL',
    wordBreak: 'ALetter',
    sentenceBreak: 'Upper',
    graphemeClusterBreak: 'Other',
    hangulSyllableType: 'NA',
    joiningType: 'U',
    isAlphabetic: true,
    isUppercase: true,
    isLowercase: false,
    isWhiteSpace: false,
    isMath: false,
    isDash: false,
    isDiacritic: false,
    isEmoji: false,
    isEmojiPresentation: false,
    isEmojiModifier: false,
    isEmojiModifierBase: false,
  );
}

/// Helper function to create a test UnicodeCharProperties instance for emoji.
UnicodeCharProperties createTestEmoji({
  String character = '😀',
  String name = 'GRINNING FACE',
  String unicodeValue = 'U+1F600',
  int codePoint = 0x1F600,
  String block = 'Emoticons',
  String plane = 'SMP',
  String generalCategory = 'So',
}) {
  return UnicodeCharProperties(
    character: character,
    name: name,
    unicodeValue: unicodeValue,
    codePoint: codePoint,
    block: block,
    plane: plane,
    generalCategory: generalCategory,
    script: 'Zyyy',
    bidiClass: 'ON',
    eastAsianWidth: 'W',
    lineBreak: 'ID',
    wordBreak: 'Other',
    sentenceBreak: 'Other',
    graphemeClusterBreak: 'Other',
    hangulSyllableType: 'NA',
    joiningType: 'U',
    isAlphabetic: false,
    isUppercase: false,
    isLowercase: false,
    isWhiteSpace: false,
    isMath: false,
    isDash: false,
    isDiacritic: false,
    isEmoji: true,
    isEmojiPresentation: true,
    isEmojiModifier: false,
    isEmojiModifierBase: false,
  );
}
