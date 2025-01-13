import 'package:flutter/material.dart';

class FirePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Type Pokemon'),
      ),
      body: const PokemonGrid(),
    );
  }
}

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example Pokémon data
    final pokemonList = [
      {
        "image": "assets/icons/004.png",
        "name": "Charmander",
        "description": "A small lizard Pokémon. Its tail burns.",
      },
      {
        "image": "assets/icons/058_f2.png",
        "name": "Growlithe",
        "description": "A loyal puppy Pokémon. Loves fire.",
      },
      {
        "image": "assets/icons/037_f2.png",
        "name": "Vulpix",
        "description": "A fox Pokémon with six tails.",
      },
      {
        "image": "assets/icons/467.png",
        "name": "Magmar",
        "description": "A fiery duck Pokémon with heat waves.",
      },
      {
        "image": "assets/icons/136.png",
        "name": "Flareon",
        "description": "An evolution of Eevee with fire powers.",
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
