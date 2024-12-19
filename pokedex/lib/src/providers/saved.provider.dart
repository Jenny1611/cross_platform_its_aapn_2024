import 'package:collection/collection.dart';
import 'package:pokedex/src/models/pokemon_saved.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved.provider.g.dart';

@riverpod
class Saved extends _$Saved {
  @override
  List<PokemonSavedModel> build() {
    ref.keepAlive();
    return [];
  }

  void addToSaved(PokemonSavedModel pokemon) {
    state = [
      ...state,
      pokemon
    ];
  }

  void removeFromSaved(int index) {
    state = [
      ...state.whereIndexed((i, element) => i != index)
    ];
  }
}
