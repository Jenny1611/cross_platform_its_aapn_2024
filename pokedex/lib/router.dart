import 'package:go_router/go_router.dart';
import 'package:pokedex/logger.dart';
import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:pokedex/src/pages/add_note.page.dart';
import 'package:pokedex/src/pages/details.page.dart';
import 'package:pokedex/src/pages/home.page.dart';
import 'package:pokedex/src/pages/saved.page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/details/:id",
      name: "details",
      builder: (context, state) {
        final param = state.pathParameters['id'];
        final id = int.parse(param!);
        return DetailsPage(id: id);
      },
    ),
    GoRoute(
      path: "/saved",
      name: "saved",
      builder: (context, state) => const SavedPage(),
    ),
    GoRoute(
      path: "/form",
      name: "form",
      builder: (context, state) {
        final pokemon = state.extra as PokemonModel;
        return AddNotePage(pokemon: pokemon);
      },
    ),
  ],
);
