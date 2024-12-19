import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon.model.freezed.dart';
part 'pokemon.model.g.dart';

@freezed
class PokemonModel with _$PokemonModel{
  const factory PokemonModel({
    required int id,
    required String name
  }) = _PokemonModel;
factory PokemonModel.fromJson(Map<String, dynamic> json)
=> _$PokemonModelFromJson(json);
}
