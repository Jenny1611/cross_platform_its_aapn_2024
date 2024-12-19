import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/images.api.model.dart';

part 'pokemon_details.api.model.freezed.dart';
part 'pokemon_details.api.model.g.dart';

@freezed
class PokemonDetailsApiModel with _$PokemonDetailsApiModel{
  const factory PokemonDetailsApiModel({
    required String name,
    required int id,
    required ImagesApiModel sprites,
    required int height,
    required int weight,
  }) = _PokemonDetailsApiModel;
factory PokemonDetailsApiModel.fromJson(Map<String, dynamic> json)
=> _$PokemonDetailsApiModelFromJson(json);
}