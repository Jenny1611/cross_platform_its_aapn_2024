import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/providers/saved.provider.dart';

class SavedPage extends ConsumerWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saved = ref.watch(savedProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salvati"),
        centerTitle: true,
      ),
      body:
          ListView(
            children: [
              for (final (index, pokemon) in saved.indexed)
                ListTile(
                  title: Text("${pokemon.id} - ${pokemon.name}"),
                  onTap: () {
                    context.pushNamed("details", pathParameters: {
                      "id": (pokemon.id).toString()
                    });
                  },
                  subtitle: Text(pokemon.comment),
                  trailing: IconButton(
                      onPressed: () {
                        ref.read(savedProvider.notifier).removeFromSaved(index);
                      },
                      icon: const Icon(Icons.delete)),
                )
            ],
          ),
    );
  }
}
