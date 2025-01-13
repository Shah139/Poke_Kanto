import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Type Pokemon'),
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
        "image": "assets/icons/007.png",
        "name": "Squirtle",
        "description": "A turtle Pokémon that shoots water.",
      },
      {
        "image": "assets/icons/009.png",
        "name": "Blastoise",
        "description": "A giant turtle Pokémon with water cannons.",
      },
      {
        "image": "assets/icons/060.png",
        "name": "Poliwag",
        "description": "A tadpole Pokémon with a swirl pattern.",
      },
      {
        "image": "assets/icons/129.png",
        "name": "Magikarp",
        "description": "A fish Pokémon that evolves into greatness.",
      },
      {
        "image": "assets/icons/134.png",
        "name": "Vaporeon",
        "description": "An evolution of Eevee with water powers.",
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
