import 'package:flutter/material.dart';
import 'package:pokedex/Widgets/pokedex_appbar.dart';
import 'package:pokedex/Widgets/tabs_navigator.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 232, 232, 1),
      appBar: const PokedexAppBar(),
      body: Column(
        children: const [
          TabsNavigator(
            title: "fav",
          ),
          Text("This is Favourites Page!"),
        ],
      ),
    );
  }
}
