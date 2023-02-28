import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/Pages/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: SvgPicture.asset("images/splash.svg"),
        nextScreen: const HomePage(),
        backgroundColor: Theme.of(context).primaryColor,
        duration: 3000,
      ),
    );
  }
}
