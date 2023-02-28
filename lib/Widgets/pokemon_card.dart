import 'package:flutter/material.dart';
import 'package:pokedex/Pages/pokemon_info.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemonName,
    required this.pokemonId,
    required this.pokemonImg,
  });
  final Color grayTextColor = const Color.fromRGBO(107, 107, 107, 1);
  final Color cardBackgroundColor = const Color.fromRGBO(243, 249, 239, 1);
  final String pokemonName;
  final String pokemonId;
  final String pokemonImg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PokemonInfo(),
          ),
        ),
      },
      child: Card(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Container(
                decoration: BoxDecoration(color: cardBackgroundColor),
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                padding: const EdgeInsets.all(20),
                child: SvgPicture.network(
                  pokemonImg,
                  /* "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg" */
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 10,
                left: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#$pokemonId",
                    style: TextStyle(
                      color: grayTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    pokemonName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Grass, Poison",
                    style: TextStyle(
                      color: grayTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
