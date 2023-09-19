import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_grid_images/data/deserializers/gender_deserializer.dart';
import 'package:test_grid_images/data/deserializers/status_deserializer.dart';
import 'package:test_grid_images/domain/enums/gender.dart';
import 'package:test_grid_images/domain/enums/status.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final int id;
  final String name;
  final String _status;
  final String _gender;
  final String image;

  Character({
    required this.id,
    required this.name,
    required this.image,
    required String status,
    required String gender,
  })  : _gender = gender,
        _status = status;

  Status get status => StatusDeserializer()(_status);

  Gender get gender => GenderDeserializer()(_gender);

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
