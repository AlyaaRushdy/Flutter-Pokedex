import 'package:flutter/material.dart';
import 'package:pokedex/Pages/favourites.dart';
import 'package:pokedex/Pages/home.dart';

class TabsNavigator extends StatefulWidget {
  const TabsNavigator({super.key, required this.title});
  final String title;
  @override
  State<TabsNavigator> createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  late double allWidth, favWidth;
  late Color allTextColor, favTextColor;
  final Color grayTextColor = const Color.fromRGBO(107, 107, 107, 1);

  @override
  void initState() {
    super.initState();
    widget.title == "all"
        ? {
            allWidth = 2,
            favWidth = 0,
            allTextColor = Colors.black,
            favTextColor = grayTextColor,
          }
        : {
            allWidth = 0,
            favWidth = 2,
            allTextColor = grayTextColor,
            favTextColor = Colors.black,
          };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 2, 0, 5),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
              },
              child: Container(
                alignment: Alignment.center,
                decoration: UnderlineTabIndicator(
                  insets: const EdgeInsets.symmetric(
                    horizontal: 3,
                  ),
                  borderSide: BorderSide(
                    width: allWidth,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Text(
                  "All Pokemons",
                  style: TextStyle(
                    fontSize: 16,
                    color: allTextColor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const FavouritesPage(),
                  ),
                ),
              },
              child: Container(
                alignment: Alignment.center,
                decoration: UnderlineTabIndicator(
                  insets: const EdgeInsets.symmetric(
                    horizontal: 3,
                  ),
                  borderSide: BorderSide(
                    width: favWidth,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Text(
                  "Favourite",
                  style: TextStyle(
                    fontSize: 16,
                    color: favTextColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
