/// Model representing a Unicode character and its metadata.
///
/// Used throughout the app to store and display Unicode character information.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unicode_character_model.freezed.dart';
part 'unicode_character_model.g.dart';

/// Represents a Unicode character with its properties.
///
/// Fields:
/// - [character]: The Unicode character symbol.
/// - [characterName]: The official name of the character.
/// - [codePoint]: The Unicode code point (e.g., U+1F600).
/// - [block]: The Unicode block to which the character belongs.
/// - [plane]: The Unicode plane (e.g., BMP, SMP).
/// - [category]: The general category (e.g., Letter, Symbol).
@freezed
abstract class UnicodeCharacter with _$UnicodeCharacter {
  /// Creates a [UnicodeCharacter] with the given properties.
  const factory UnicodeCharacter({
    /// The Unicode character symbol.
    @Default('') String character,

    /// The official name of the character.
    @Default('') String characterName,

    /// The Unicode code point (e.g., U+1F600).
    @Default('') String codePoint,

    /// The Unicode block to which the character belongs.
    @Default('') String block,

    /// The Unicode plane (e.g., BMP, SMP).
    @Default('') String plane,

    /// The general category (e.g., Letter, Symbol).
    @Default('') String category,
  }) = _UnicodeCharacter;

  /// Creates a [UnicodeCharacter] from a JSON map.
  factory UnicodeCharacter.fromJson(Map<String, dynamic> json) =>
      _$UnicodeCharacterFromJson(json);
}
