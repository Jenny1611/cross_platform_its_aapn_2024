// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Pokemon.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonApiModelImpl _$$PokemonApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonApiModelImpl(
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonApiModelImplToJson(
        _$PokemonApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
