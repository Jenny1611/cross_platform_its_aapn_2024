import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon_details.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_details.provider.g.dart';

@riverpod
Future<PokemonDetailsModel> pokemonDetails(PokemonDetailsRef ref, int id) async {
  final api = ref.watch(pokemonApiProvider);
  final result = await api.getPokemonDetails(id);
  return result;
}
