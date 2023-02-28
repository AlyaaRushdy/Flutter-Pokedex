import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pokedex/data/api_data.dart';
import 'package:pokedex/data/api_model.dart';
import 'package:pokedex/data/api_pokemon_model.dart';

import 'api_service.dart';

class ApiServiceSingular {
  late PokemonData pokemonDataModel;
  late Pokemon _pokemon;

  Future<PokemonData?> getPokemonData() async {
    _pokemon = (await ApiService().getPokemons())!;
    try {
      var url = Uri.parse("https://pokeapi.co/api/v2/pokemon/1/");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        pokemonDataModel = pokemonDataFromJson(response.body);
        return pokemonDataModel;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
