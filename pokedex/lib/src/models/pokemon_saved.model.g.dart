// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_saved.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSavedModelImpl _$$PokemonSavedModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonSavedModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonSavedModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          comment: $checkedConvert('comment', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonSavedModelImplToJson(
        _$PokemonSavedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
    };
