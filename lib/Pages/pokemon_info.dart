import 'package:flutter/material.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(243, 249, 239, 1),
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
        leading: IconButton(
          alignment: Alignment.centerLeft,
          onPressed: () => {
            Navigator.pop(context),
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Color.fromRGBO(0, 0, 0, 0.87),
          ),
        ),
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
