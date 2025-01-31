import 'package:countries_and_flags/providers/countries_provider.dart';
import 'package:countries_and_flags/providers/saved_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final form = FormGroup({
    "name": FormControl<String>(value: "")
  });
  String? name;

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(countriesProvider(name));
    final saved = ref.watch(savedProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries And Flags"),
        backgroundColor: Colors.pink[50],
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Badge.count(
                count: saved.length,
                child: IconButton(
                    onPressed: () {
                      context.pushNamed("saved");
                    },
                    icon: const Icon(
                      Icons.favorite_rounded,
                      color: Colors.pink,
                    ))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ReactiveTextField(
                  formControlName: "name",
                  decoration: InputDecoration(
                    hintText: "Italy...",
                    label: const Text("Search country"),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        form.control("name").value = null;
                        setState(() {
                          name = null;
                        });
                      },
                    ),
                  ),
                  onSubmitted: (control) {
                    setState(() {
                      name = form.control("name").value;
                    });
                  },
                ),
              ),
              Expanded(
                child: switch (countries) {
                  AsyncData(
                    :final value
                  ) =>
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        for (final country in value)
                          GestureDetector(
                            onTap: () {
                              context.pushNamed("details", extra: country);
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              saved.contains(country) ? ref.read(savedProvider.notifier).removeFromSaved(saved.indexOf(country)) : ref.read(savedProvider.notifier).addToSaved(country);
                                            },
                                            icon: saved.contains(country)
                                                ? const Icon(
                                                    Icons.favorite_rounded,
                                                    color: Colors.pink,
                                                  )
                                                : const Icon(
                                                    Icons.favorite_outline,
                                                    color: Colors.pink,
                                                  ))
                                      ],
                                    ),
                                    Image.network(
                                      country.flags.png,
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      "${country.cca2} - ${country.name.common}",
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  AsyncError() => const Center(
                      child: Text("C'è un errore..."),
                    ),
                  _ => const Center(
                      child: CircularProgressIndicator(),
                    )
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
