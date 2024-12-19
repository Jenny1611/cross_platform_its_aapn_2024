// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailsApiModelImpl _$$PokemonDetailsApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonDetailsApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonDetailsApiModelImpl(
          name: $checkedConvert('name', (v) => v as String),
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          sprites: $checkedConvert('sprites',
              (v) => ImagesApiModel.fromJson(v as Map<String, dynamic>)),
          height: $checkedConvert('height', (v) => (v as num).toInt()),
          weight: $checkedConvert('weight', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonDetailsApiModelImplToJson(
        _$PokemonDetailsApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'sprites': instance.sprites,
      'height': instance.height,
      'weight': instance.weight,
    };
