// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseApiModelImpl _$$PokemonResponseApiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonResponseApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonResponseApiModelImpl(
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PokemonApiModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonResponseApiModelImplToJson(
        _$PokemonResponseApiModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
