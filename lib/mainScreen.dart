import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Icon(Icons.catching_pokemon, size: 48),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text("POKEDEX", style: TextStyle(fontSize: 24)),
              ),
            ),
            Icon(Icons.arrow_downward, size: 48),
          ],
        ),
     )
    );
  }
}
