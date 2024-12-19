import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/models/form.model.dart';
import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:pokedex/src/models/pokemon_saved.model.dart';
import 'package:pokedex/src/providers/saved.provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddNotePage extends ConsumerWidget {
  const AddNotePage({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ref.watch(formModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salva e Annota"),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  title: Text(
                    '${pokemon.id} - ${pokemon.name}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ReactiveForm(
                formGroup: formModel,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: ReactiveTextField(
                    formControlName: "comment",
                    minLines: 3,
                    maxLines: 6,
                    decoration: const InputDecoration(border: OutlineInputBorder(), floatingLabelBehavior: FloatingLabelBehavior.always, label: Text("Commento"), hintText: "Scrivi qui il commento..."),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  if (formModel.valid) {
                    final comment = formModel.control("comment").value;
                    final pokemonToSave = PokemonSavedModel(id: pokemon.id, name: pokemon.name, comment: comment);
                    ref.watch(savedProvider.notifier).addToSaved(pokemonToSave);
                    context.pop();
                  }
                },
                label: const Text("Salva"),
                icon: const Icon(Icons.save),
              )
            ],
          ),
        ),
      ),
    );
  }
}
