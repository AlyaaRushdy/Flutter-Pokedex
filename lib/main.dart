import 'package:flutter/material.dart';
import 'package:pokedex/Pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pokedex",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(232, 232, 232, 1),
        primaryColor: const Color.fromRGBO(53, 88, 205, 1),
      ),
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
