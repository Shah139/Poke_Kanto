import 'package:flutter/material.dart';

class IndigoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Indigo League')),
      body: SingleChildScrollView( // Allows scrolling if content overflows
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image of the Indigo League
              Center(
                child: Image.asset(
                  'assets/icons/indigo_league.jpg', // Make sure to put your image in the assets/images folder
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 20),
              // Title for the description
              Text(
                'The Indigo League in Pokémon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // 400-word description
              Text(
                'The Indigo League, also known as the Kanto League, is the first major region in the Pokémon world where trainers compete for badges, battle against various gym leaders, and eventually face the Elite Four and the Champion. The Indigo League is a significant milestone in the Pokémon journey, as it represents the first major test for aspiring Pokémon trainers. As the setting for the original Pokémon anime series, the league has a special place in the hearts of fans worldwide.\n\n'
                'In the Indigo League, the main character, Ash Ketchum, and his friends travel across the Kanto region to challenge gym leaders and collect badges. These badges are earned through battles that test the trainers\' skills, knowledge, and bond with their Pokémon. The eight gym leaders of Kanto each have a specific type of Pokémon that they specialize in, requiring trainers to adapt their strategies for each encounter.\n\n'
                'The Indigo League tournament takes place at the Pokémon League stadium, where top trainers from around the world compete to become the Pokémon Champion. This competition is fierce, with many highly skilled trainers vying for the title. However, the road to the Champion is not easy, as the trainers must first face the Elite Four, a group of four powerful trainers that serve as a final challenge before reaching the Champion.\n\n'
                'The story of the Indigo League is one of determination, growth, and friendship. Ash, along with his loyal companions Misty and Brock, battles through tough situations, learns valuable lessons, and strengthens his relationship with his Pokémon. By the end of the league, Ash is no longer just an inexperienced trainer but has grown into a skilled and confident competitor, embodying the true spirit of a Pokémon Master.\n\n'
                'The Indigo League also features some of the most iconic Pokémon battles in the history of the anime, showcasing the importance of strategy, teamwork, and growth. Ash\'s battle against the Elite Four and his subsequent face-off against the Champion remains a highlight of the Kanto region, marking the culmination of his hard work and dedication.\n\n'
                'Overall, the Indigo League serves as the foundation for the Pokémon series, setting the tone for future leagues and events in the Pokémon world. It represents the spirit of adventure, competition, and friendship, making it an unforgettable chapter in the Pokémon universe.',
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
