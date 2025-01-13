import 'package:flutter/material.dart';

class ElectricPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electric Type Pokemon'),
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
        "image": "assets/icons/025.png",
        "name": "Pikachu",
        "description": "An iconic mouse Pokémon with electric powers.",
      },
      {
        "image": "assets/icons/026.png",
        "name": "Raichu",
        "description": "The evolved form of Pikachu with more power.",
      },
      {
        "image": "assets/icons/081.png",
        "name": "Magnemite",
        "description": "An electric Pokémon that generates magnetic fields.",
      },
      {
        "image": "assets/icons/125.png",
        "name": "Electabuzz",
        "description": "A humanoid electric Pokémon that generates sparks.",
      },
      {
        "image": "assets/icons/135.png",
        "name": "Jolteon",
        "description": "An evolution of Eevee with electric powers.",
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
