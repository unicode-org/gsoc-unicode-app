// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unicode_character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnicodeCharacter _$UnicodeCharacterFromJson(Map<String, dynamic> json) {
  return _UnicodeCharacter.fromJson(json);
}

/// @nodoc
mixin _$UnicodeCharacter {
  /// The Unicode character symbol.
  @JsonKey(name: 'Character')
  String get character => throw _privateConstructorUsedError;

  /// The official name of the character.
  @JsonKey(name: 'Character Name')
  String get characterName => throw _privateConstructorUsedError;

  /// The Unicode code point (e.g., U+1F600).
  @JsonKey(name: 'Code Point')
  String get codePoint => throw _privateConstructorUsedError;

  /// The Unicode block to which the character belongs.
  @JsonKey(name: 'Block')
  String get block => throw _privateConstructorUsedError;

  /// The Unicode plane (e.g., BMP, SMP).
  @JsonKey(name: 'Plane')
  String get plane => throw _privateConstructorUsedError;

  /// The general category (e.g., Letter, Symbol).
  @JsonKey(name: 'Category')
  String get category => throw _privateConstructorUsedError;

  /// Serializes this UnicodeCharacter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnicodeCharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnicodeCharacterCopyWith<UnicodeCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnicodeCharacterCopyWith<$Res> {
  factory $UnicodeCharacterCopyWith(
          UnicodeCharacter value, $Res Function(UnicodeCharacter) then) =
      _$UnicodeCharacterCopyWithImpl<$Res, UnicodeCharacter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Character') String character,
      @JsonKey(name: 'Character Name') String characterName,
      @JsonKey(name: 'Code Point') String codePoint,
      @JsonKey(name: 'Block') String block,
      @JsonKey(name: 'Plane') String plane,
      @JsonKey(name: 'Category') String category});
}

/// @nodoc
class _$UnicodeCharacterCopyWithImpl<$Res, $Val extends UnicodeCharacter>
    implements $UnicodeCharacterCopyWith<$Res> {
  _$UnicodeCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnicodeCharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? characterName = null,
    Object? codePoint = null,
    Object? block = null,
    Object? plane = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      codePoint: null == codePoint
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      plane: null == plane
          ? _value.plane
          : plane // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnicodeCharacterImplCopyWith<$Res>
    implements $UnicodeCharacterCopyWith<$Res> {
  factory _$$UnicodeCharacterImplCopyWith(_$UnicodeCharacterImpl value,
          $Res Function(_$UnicodeCharacterImpl) then) =
      __$$UnicodeCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Character') String character,
      @JsonKey(name: 'Character Name') String characterName,
      @JsonKey(name: 'Code Point') String codePoint,
      @JsonKey(name: 'Block') String block,
      @JsonKey(name: 'Plane') String plane,
      @JsonKey(name: 'Category') String category});
}

/// @nodoc
class __$$UnicodeCharacterImplCopyWithImpl<$Res>
    extends _$UnicodeCharacterCopyWithImpl<$Res, _$UnicodeCharacterImpl>
    implements _$$UnicodeCharacterImplCopyWith<$Res> {
  __$$UnicodeCharacterImplCopyWithImpl(_$UnicodeCharacterImpl _value,
      $Res Function(_$UnicodeCharacterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? characterName = null,
    Object? codePoint = null,
    Object? block = null,
    Object? plane = null,
    Object? category = null,
  }) {
    return _then(_$UnicodeCharacterImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      codePoint: null == codePoint
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      plane: null == plane
          ? _value.plane
          : plane // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnicodeCharacterImpl implements _UnicodeCharacter {
  const _$UnicodeCharacterImpl(
      {@JsonKey(name: 'Character') this.character = '',
      @JsonKey(name: 'Character Name') this.characterName = '',
      @JsonKey(name: 'Code Point') this.codePoint = '',
      @JsonKey(name: 'Block') this.block = '',
      @JsonKey(name: 'Plane') this.plane = '',
      @JsonKey(name: 'Category') this.category = ''});

  factory _$UnicodeCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnicodeCharacterImplFromJson(json);

  /// The Unicode character symbol.
  @override
  @JsonKey(name: 'Character')
  final String character;

  /// The official name of the character.
  @override
  @JsonKey(name: 'Character Name')
  final String characterName;

  /// The Unicode code point (e.g., U+1F600).
  @override
  @JsonKey(name: 'Code Point')
  final String codePoint;

  /// The Unicode block to which the character belongs.
  @override
  @JsonKey(name: 'Block')
  final String block;

  /// The Unicode plane (e.g., BMP, SMP).
  @override
  @JsonKey(name: 'Plane')
  final String plane;

  /// The general category (e.g., Letter, Symbol).
  @override
  @JsonKey(name: 'Category')
  final String category;

  @override
  String toString() {
    return 'UnicodeCharacter(character: $character, characterName: $characterName, codePoint: $codePoint, block: $block, plane: $plane, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnicodeCharacterImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.codePoint, codePoint) ||
                other.codePoint == codePoint) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.plane, plane) || other.plane == plane) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, character, characterName, codePoint, block, plane, category);

  /// Create a copy of UnicodeCharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnicodeCharacterImplCopyWith<_$UnicodeCharacterImpl> get copyWith =>
      __$$UnicodeCharacterImplCopyWithImpl<_$UnicodeCharacterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnicodeCharacterImplToJson(
      this,
    );
  }
}

abstract class _UnicodeCharacter implements UnicodeCharacter {
  const factory _UnicodeCharacter(
          {@JsonKey(name: 'Character') final String character,
          @JsonKey(name: 'Character Name') final String characterName,
          @JsonKey(name: 'Code Point') final String codePoint,
          @JsonKey(name: 'Block') final String block,
          @JsonKey(name: 'Plane') final String plane,
          @JsonKey(name: 'Category') final String category}) =
      _$UnicodeCharacterImpl;

  factory _UnicodeCharacter.fromJson(Map<String, dynamic> json) =
      _$UnicodeCharacterImpl.fromJson;

  /// The Unicode character symbol.
  @override
  @JsonKey(name: 'Character')
  String get character;

  /// The official name of the character.
  @override
  @JsonKey(name: 'Character Name')
  String get characterName;

  /// The Unicode code point (e.g., U+1F600).
  @override
  @JsonKey(name: 'Code Point')
  String get codePoint;

  /// The Unicode block to which the character belongs.
  @override
  @JsonKey(name: 'Block')
  String get block;

  /// The Unicode plane (e.g., BMP, SMP).
  @override
  @JsonKey(name: 'Plane')
  String get plane;

  /// The general category (e.g., Letter, Symbol).
  @override
  @JsonKey(name: 'Category')
  String get category;

  /// Create a copy of UnicodeCharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnicodeCharacterImplCopyWith<_$UnicodeCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
