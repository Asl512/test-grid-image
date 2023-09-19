// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      status: json['status'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'status': _$StatusEnumMap[instance.status]!,
      'gender': _$GenderEnumMap[instance.gender]!,
    };

const _$StatusEnumMap = {
  Status.alive: 'alive',
  Status.dead: 'dead',
  Status.unknown: 'unknown',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unknown: 'unknown',
};
