/// Utility class for managing persistent storage using Hive.
///
/// Handles saving, retrieving, and removing Unicode characters and recently viewed characters.
library;

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gsoc_unicode_app/models/unicode_character_model.dart';
import 'package:gsoc_unicode_app/storage/storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Provides static methods for interacting with app storage.
class AppStorage {
  static Box<String>? _box;

  /// Initializes Hive and opens the main storage box if not already open.
  static Future<void> init() async {
    await Hive.initFlutter();
    if (!boxInitialized()) {
      _box = await Hive.openBox<String>(boxName);
    }
  }

  /// Checks if the main storage box is initialized and open.
  static bool boxInitialized() {
    return _box?.isOpen ?? false;
  }

  /// Opens a Hive box with the given [boxName].
  static Future<void> open(String boxName) async {
    _box = await Hive.openBox(boxName);
  }

  /// Closes the currently open Hive box.
  static Future<void> close() async {
    await Hive.close();
  }

  /// Clears all data from the currently open Hive box.
  static Future<void> clear() async {
    await _box?.clear();
  }

  /// Saves a [UnicodeCharacter] to the saved characters list in storage.
  ///
  /// Inserts the character at the beginning of the list.
  static Future<void> saveCharacter(UnicodeCharacter character) async {
    try {
      final characterList = [...getSavedCharacters()]..insert(0, character);
      final encoded = jsonEncode(characterList.map((c) => c.toJson()).toList());
      await _box?.put(savedCharactersKey, encoded);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// Retrieves the list of saved Unicode characters from storage.
  ///
  /// Returns an empty list if none are found or on error.
  static List<UnicodeCharacter> getSavedCharacters() {
    try {
      final savedCharacters = _box?.get(savedCharactersKey);
      var characterList = <UnicodeCharacter>[];

      if (savedCharacters != null) {
        final decoded = jsonDecode(savedCharacters) as List<dynamic>;
        characterList =
            decoded.map((e) => UnicodeCharacter.fromJson(e)).toList();
      }
      return characterList;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  /// Saves a [UnicodeCharacter] as recently viewed.
  ///
  /// Removes any existing instance and inserts the character at the beginning.
  static Future<void> saveRecentlyViewedCharacter(
    UnicodeCharacter character,
  ) async {
    try {
      final characterList = [...getRecentlyViewedCharacters()]
        ..removeWhere((c) => c.characterName == character.characterName)
        ..insert(0, character);

      final encoded = jsonEncode(characterList.map((c) => c.toJson()).toList());
      await _box?.put(recentCharacterKey, encoded);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// Retrieves the list of recently viewed Unicode characters from storage.
  ///
  /// Returns only the latest 5 characters.
  static List<UnicodeCharacter> getRecentlyViewedCharacters() {
    try {
      final encoded = _box?.get(recentCharacterKey);
      if (encoded == null) return [];

      final decoded = jsonDecode(encoded) as List;
      final characters =
          decoded.map((item) => UnicodeCharacter.fromJson(item)).toList();

      return characters.take(5).toList();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  /// Removes a [UnicodeCharacter] from the saved characters list in storage.
  static Future<void> removeCharacter(UnicodeCharacter character) async {
    try {
      final characterList = [...getSavedCharacters()]
        ..removeWhere((c) => c.characterName == character.characterName);

      final encoded = jsonEncode(characterList.map((c) => c.toJson()).toList());
      await _box?.put(savedCharactersKey, encoded);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// Sets the box for testing purposes only.
  @visibleForTesting
  static void setTestBox(Box box) {
    _box = box as Box<String>;
  }
}
