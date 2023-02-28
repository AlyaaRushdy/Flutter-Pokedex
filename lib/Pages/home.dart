import 'package:flutter/material.dart';
import 'package:pokedex/Widgets/home_page_content.dart';
import 'package:pokedex/Widgets/pokedex_appbar.dart';
import 'package:pokedex/Widgets/tabs_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PokedexAppBar(),
      body: Column(
        children: const [
          TabsNavigator(
            title: "all",
          ),
          Expanded(
            child: HomePageContent(),
          ),
        ],
      ),
    );
  }
}
