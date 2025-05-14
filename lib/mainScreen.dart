import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cardWidget.dart';

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
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Icon(Icons.catching_pokemon, size: 48),
                ),
                Expanded(
                  child: Text(
                    "POKEDEX",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Icon(Icons.arrow_downward, size: 48),
              ],
            ),
    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
    return cardWidget(id: "#001", name: "Bulbasaur", imageUrl: 'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/cf47f9fac4ed3037ff2a8ea83204e32aff8fb5f3.png', color: Colors.green);
          ],

        ),
      ),
    );
  }
}