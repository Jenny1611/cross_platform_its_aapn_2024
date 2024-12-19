import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/providers/pokemons.provider.dart';
import 'package:pokedex/src/providers/saved.provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonsProvider);
    final count = ref.watch(savedProvider.select((value) => value.length));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex!"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Badge.count(
              count: count,
              child: IconButton(
                  onPressed: () {
                    context.pushNamed("saved");
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  )),
            ),
          )
        ],
      ),
      body: switch (pokemons) {
        AsyncData(
          :final value
        ) =>
          ListView(
            children: [
              for (final pokemon in value)
                ListTile(
                  title: Text("${pokemon.id} - ${pokemon.name}"),
                  onTap: () {
                    context.pushNamed("details", pathParameters: {
                      "id": (pokemon.id).toString()
                    });
                  },
                  trailing: IconButton(
                      onPressed: () {
                        context.pushNamed("form", extra: pokemon);
                      },
                      icon: const Icon(Icons.save)),
                )
            ],
          ),
        AsyncError() => const Center(
            child: Text("Qualcosa è andato storto..."),
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}
