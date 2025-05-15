import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/data/model.dart';

import '../cardWidget.dart';
import 'detailScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pokemonList = [
    Model(
        name: "Bulbasaur",
        id: "#001",
        imageUrl: 'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/cf47f9fac4ed3037ff2a8ea83204e32aff8fb5f3.png',
        color: Colors.green,
        typeAtack: "Grass" ,
        typeDefense: "Poison"

    ),
    Model(
        name: "charmander",
        id: "#004",
        imageUrl: "https://static.wikia.nocookie.net/friendshipverse/images/5/56/Charmander.png/revision/latest?cb=20221220050349",
        color: Colors.orange,
        typeAtack: "Fire",
        typeDefense:""

    ),
    Model(
        name: "Squirtle",
        id: "#007",
        imageUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/007.png",
        color: Colors.blue,
        typeAtack: "Water",
        typeDefense:""
    ),
    Model(
        name: "Butterfree",
        id: "#012",
        imageUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/012.png",
        color: Colors.teal,
        typeAtack: "Bug" ,
        typeDefense:""
    ),
    Model(
    name: "Pikachu",
    id: "#025",
    imageUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png",
    color: Colors.yellow,
      typeAtack: "Electric",
      typeDefense: ""

  ),
  Model(
  name: "Gastly",
  id: "#0092",
  imageUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/092.png",
  color: Colors.purple,
    typeAtack: "Ghost",
    typeDefense: "Type"

  ),
    Model(
        name: "ditto",
        id: "#132",
        imageUrl: "https://static.wikia.nocookie.net/pokemon/images/2/25/0132Ditto.png/revision/latest?cb=20240715231555",
        color: Colors.blueGrey,
        typeAtack: "Normal",
        typeDefense: ""
    ),
    Model(
        name: "Mew",
        id: "#152",
        imageUrl: "https://unite.pokemon.com/images/pokemon/mew/stat/stat-mew.png",
        color: Colors.pink,
        typeAtack: "Psychic",
        typeDefense: ""
    ),
    Model(
        name: "Aron",
        id: "#304",
        imageUrl: "https://static.wikia.nocookie.net/pokemony/images/3/30/Aron.png/revision/latest?cb=20150824131332&path-prefix=pl",
        color: Colors.orange,
        typeAtack: "Rock",
        typeDefense: "Steel"

    ),

  ];

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
                Row(
                  children: [
                    Text("#", style: TextStyle(fontSize: 20)),
                    Icon(Icons.arrow_downward, size: 48),
                  ],
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) ,padding: EdgeInsets.all(5),itemCount: pokemonList.length, itemBuilder: (context, index) {
                final pokemon = pokemonList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => detailScreen(model: pokemon)));
                    },
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: cardWidget(id: pokemon.id, name: pokemon.name, imageUrl: pokemon.imageUrl, color: pokemon.color),
                      ),
                    ),
                  );
                  }),

            ),

        ],
        )
      ),
    );
  }
}