import 'package:countries_and_flags/models/country_model.dart';
import 'package:countries_and_flags/providers/saved_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({required this.country, super.key});
  final CountryModel country;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var index = ref.watch(savedProvider.select((value) => value.indexOf(country)));
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name.common),
        backgroundColor: Colors.pink[50],
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                index == -1 ? ref.read(savedProvider.notifier).addToSaved(country) : ref.read(savedProvider.notifier).removeFromSaved(index);
              },
              icon: index == -1
                  ? const Icon(
                      Icons.favorite_outline,
                      color: Colors.pink,
                    )
                  : const Icon(
                      Icons.favorite_rounded,
                      color: Colors.pink,
                    ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                country.name.official,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(height: 26),
              Image.network(
                country.flags.png,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 26),
              Text(
                "${country.cca2} - ${country.name.common}",
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(height: 26),
              Text(country.flags.alt, textAlign: TextAlign.center, style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
