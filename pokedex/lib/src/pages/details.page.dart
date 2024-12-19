import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:pokedex/src/pages/home.page.dart';
import 'package:pokedex/src/providers/pokemon_details.provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(pokemonDetailsProvider(id));
    return Scaffold(
        appBar: AppBar(
          title: switch (result) {
            AsyncData(
              :final value
            ) =>
              Text("${value.id} - ${value.name}"),
            AsyncError() => const Center(
                child: Text("C'è un errore..."),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              )
          },
          centerTitle: true,
          actions: [
            switch (result) {
              AsyncData(
                :final value
              ) =>
                IconButton(
                    onPressed: () {
                      final pokemon = PokemonModel(id: value.id, name: value.name);
                      context.pushNamed("form", extra: result);
                    },
                    icon: const Icon(Icons.save)),
              AsyncError() => const Center(
                  child: Text("C'è un errore..."),
                ),
              _ => const Center(
                  child: CircularProgressIndicator(),
                )
            },
          ],
        ),
        body: switch (result) {
          AsyncData(
            :final value
          ) =>
            Center(
              child: Column(
                children: [
                  Image.network(value.sprites.frontDefault),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Peso: ${value.weight}'),
                        Text('Altezza: ${value.height}')
                      ],
                    ),
                  )
                ],
              ),
            ),
          AsyncError() => const Center(
              child: Text("C'è un errore..."),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        });
  }
}
