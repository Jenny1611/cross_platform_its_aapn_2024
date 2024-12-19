import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons.provider.g.dart';

@riverpod
Future<List<PokemonModel>> pokemons(PokemonsRef ref) async {
  final api = ref.watch(pokemonApiProvider);
  final result = await api.getPokemons();
  return [
    for (final pokemonApi in result) PokemonModel(id: getIdFromUrl(pokemonApi.url), name: pokemonApi.name)
  ];
}

int getIdFromUrl(String url) {
  final split = url.split('/');
  final [
    ...,
    id,
    _
  ] = split;
  final integer = int.parse(id);
  return integer;
}
