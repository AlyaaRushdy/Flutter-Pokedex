import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pokedex/data/api_data.dart';
import 'package:pokedex/data/api_model.dart';
import 'package:pokedex/data/api_pokemon_model.dart';

class ApiService {
  late Pokemon pokemonsModel;
  Future<Pokemon?> getPokemons() async {
    try {
      var url = Uri.parse(APIdata.baseURL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        pokemonsModel = pokemonFromJson(response.body);
        return pokemonsModel;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
