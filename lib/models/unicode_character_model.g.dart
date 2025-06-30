// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unicode_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnicodeCharacterImpl _$$UnicodeCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$UnicodeCharacterImpl(
      character: json['Character'] as String? ?? '',
      characterName: json['Character Name'] as String? ?? '',
      codePoint: json['Code Point'] as String? ?? '',
      block: json['Block'] as String? ?? '',
      plane: json['Plane'] as String? ?? '',
      category: json['Category'] as String? ?? '',
    );

Map<String, dynamic> _$$UnicodeCharacterImplToJson(
        _$UnicodeCharacterImpl instance) =>
    <String, dynamic>{
      'Character': instance.character,
      'Character Name': instance.characterName,
      'Code Point': instance.codePoint,
      'Block': instance.block,
      'Plane': instance.plane,
      'Category': instance.category,
    };
