import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/Pokemon.api.model.dart';
import 'package:pokedex/api/models/pokemon_details.api.model.dart';
import 'package:pokedex/api/models/pokemon_response.api.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_api.g.dart';

@riverpod
PokemonApi pokemonApi(PokemonApiRef ref) {
  final client = ref.watch(httpClientProvider);
  final api = PokemonApi(client);
  return api;
}

class PokemonApi {
  PokemonApi(this.client);
  final Dio client;

  Future<List<PokemonApiModel>> getPokemons() async {
    final response = await client.get("/pokemon", queryParameters: {
      "limit": 10000
    });
    final model = PokemonResponseApiModel.fromJson(response.data!);
    return model.results;
  }

  Future<PokemonDetailsApiModel> getPokemonDetails(int id) async {
    final response = await client.get("/pokemon/$id");
    final model = PokemonDetailsApiModel.fromJson(response.data!);
    return model;
  }
}
