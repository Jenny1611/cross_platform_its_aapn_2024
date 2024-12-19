import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon_saved.model.freezed.dart';
part 'pokemon_saved.model.g.dart';

@freezed
class PokemonSavedModel with _$PokemonSavedModel{
  const factory PokemonSavedModel({
    required int id,
    required String name,
    required String comment
  }) = _PokemonSavedModel;
factory PokemonSavedModel.fromJson(Map<String, dynamic> json)
=> _$PokemonSavedModelFromJson(json);
}