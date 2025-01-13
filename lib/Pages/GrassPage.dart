import 'package:flutter/material.dart';

class GrassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grass Type Pokemon'),
      ),
      body: const PokemonGrid(),
    );
  }
}

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonList = [
      {
        "image": "assets/icons/bulba.png",
        "name": "Bulbasaur",
        "description": "A seed Pokémon with a plant on its back.",
      },
      {
        "image": "assets/icons/ivysaur.png",
        "name": "Ivysaur",
        "description": "A plant Pokémon ready to bloom.",
      },
      {
        "image": "assets/icons/chikorita.png",
        "name": "Chikorita",
        "description": "A leaf Pokémon that loves the sun.",
      },
      {
        "image": "assets/icons/252.png",
        "name": "Treecko",
        "description": "A lizard Pokémon skilled in climbing trees.",
      },
      {
        "image": "assets/icons/511.png",
        "name": "Pansage",
        "description": "A monkey Pokémon with a plant sprout.",
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
                  child: Image.asset(
                    pokemon["image"]!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  pokemon["name"]!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  pokemon["description"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
              ),
            ],
          ),
        );
      },
    );
  }
}
