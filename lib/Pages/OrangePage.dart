import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orange League')),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/icons/orange_league.png',
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                'The Orange League in Pokémon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              
              Text(
                'The Orange League is a unique and important part of the Pokémon universe, marking a distinct departure from the traditional Pokémon leagues seen in the Kanto and Johto regions. The Orange League is located in the Orange Archipelago, a group of islands in the Pokémon world, and is featured in the Orange Islands saga of the Pokémon anime. The league is not as widely known as others, but it holds significant importance in the series as Ash Ketchum’s journey continues beyond Kanto.\n\n'
                'Unlike the regular Pokémon League tournaments, the Orange League challenges trainers in a different way. Instead of following the typical pattern of earning gym badges to qualify for the Elite Four and the League Championship, the Orange League features a unique set of challenges. Trainers must compete in a series of battles against the Orange Crew, a group of powerful trainers who serve as the region’s official league leaders. These battles test not only the strength of a trainer’s Pokémon but also their creativity and adaptability in battle strategies.\n\n'
                'In the anime, Ash Ketchum travels to the Orange Archipelago after his adventure in the Kanto region. Along with his friends Misty and Brock, Ash faces the various trials of the Orange League. Throughout his journey, Ash earns the trust and respect of the local trainers, as well as the admiration of the islanders, who are deeply proud of their Pokémon traditions. His travels through the Orange Islands are filled with exciting battles, new friendships, and numerous challenges.\n\n'
                'One of the defining features of the Orange League is the unique types of battles that trainers must participate in. For example, the Orange League includes the Orange Crew Tournament, which is a multi-faceted competition involving standard Pokémon battles, but also unique scenarios where trainers must use their Pokémon in different ways, such as underwater battles or in battles with special rules. This added layer of complexity challenges trainers to think outside the box.\n\n'
                'The Pokémon in the Orange League are equally diverse, including some unique and rare species native to the Orange Archipelago. Trainers need to be prepared to face opponents with highly specialized Pokémon teams, requiring them to be adaptable in their own team-building strategies. The league also has its share of memorable moments, including the introduction of powerful Pokémon such as Charizard and Ash’s interactions with other iconic Pokémon like Lapras.\n\n'
                'The Orange League also brings attention to the importance of teamwork between trainers and their Pokémon. Ash’s connection with his Pokémon, especially his bond with Pikachu, is a central theme of the series and is highlighted during his time in the Orange League. This personal growth and strengthened bonds help Ash overcome the obstacles he faces along the way.\n\n'
                'Ultimately, the Orange League serves as a testament to the ever-evolving nature of the Pokémon world. It offers a fresh experience for both trainers and fans alike, standing out with its unique challenges, distinctive format, and exciting battles. For Ash, the Orange League marks an important step in his quest to become a Pokémon Master, solidifying his status as one of the greatest trainers in the Pokémon universe.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
