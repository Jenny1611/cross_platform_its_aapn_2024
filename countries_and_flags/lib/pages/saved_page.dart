import 'package:countries_and_flags/providers/saved_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SavedPage extends ConsumerWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedCountries = ref.watch(savedProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
        centerTitle: true,
        backgroundColor: Colors.pink[50],
      ),
      body: ListView(
        children: [
          for (final (
                index,
                country
              ) in savedCountries.indexed)
            ListTile(
              onTap: () {
                context.pushNamed("details", extra: country);
              },
              leading: Text(country.cca2),
              title: Text(country.name.common),
              subtitle: Text(country.name.official),
              trailing: IconButton(
                  onPressed: () {
                    ref.read(savedProvider.notifier).removeFromSaved(index);
                  },
                  icon: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.pink,
                  )),
            )
        ],
      ),
    );
  }
}
