import 'package:flutter/material.dart';
import 'package:pokedex/data/api_model.dart';
import 'package:pokedex/data/api_pokemon_model.dart';
import 'package:pokedex/data/api_service.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:pokedex/Widgets/pokemon_card.dart';
import 'package:pokedex/data/api_service_singular.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent> {
  late Pokemon? _pokemon;
  late PokemonData? _pokemonData;
  @override
  void initState() {
    super.initState();
    _getData();
    _getPokeData();
  }

  void _getData() async {
    _pokemon = (await ApiService().getPokemons())!;

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  void _getPokeData() async {
    _pokemonData = (await ApiServiceSingular().getPokemonData())!;

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return _pokemon == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GridView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 5,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.5,
              crossAxisSpacing: 2.5,
              childAspectRatio: 1 / 1.65,
            ),
            itemCount: _pokemon!.count,
            shrinkWrap: true,
            semanticChildCount: 20,
            itemBuilder: (context, index) {
              return PokemonCard(
                pokemonName: StringUtils.capitalize(
                  _pokemon!.results[index].name,
                ),
                pokemonId: (index + 1).toString().padLeft(3, "0"),
                pokemonImg:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg", /*  _pokemonData!.sprites.other!.dreamWorld.frontDefault */
              );
            },
          );
  }
}
