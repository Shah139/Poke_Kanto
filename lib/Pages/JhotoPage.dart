import 'package:flutter/material.dart';

class JhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jhoto League')),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/icons/jhoto_league.png', 
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                'The Jhoto League in Pokémon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              
              Text(
                'The Jhoto League, also known as the Johto League, is the second major Pokémon league introduced in the Pokémon world, following the success of the Indigo League. Located in the Johto region, it is a crucial milestone in a Pokémon trainer’s journey, and serves as the setting for the second generation of Pokémon games and anime. The Johto region brings fresh experiences and challenges for trainers, with a whole new set of Pokémon, gym leaders, and exciting adventures.\n\n'
                'Trainers who journey to the Johto League must first travel across the region to defeat the eight gym leaders and earn their respective badges. The Johto gym leaders are known for their unique tactics and specialized Pokémon types. Trainers need to plan their strategies carefully to overcome these diverse challenges. Ash Ketchum, the series protagonist, competes in the Johto League in his bid to become a Pokémon Master. Along the way, he is joined by his friends, such as Misty and Brock, who also provide support and guidance.\n\n'
                'One of the most notable aspects of the Johto League is the introduction of new Pokémon species, including some fan-favorites like Totodile, Chikorita, and Cyndaquil. These Pokémon have their own strengths and personalities, and the bond between Ash and his Johto Pokémon is a central theme in the series. As Ash travels through Johto, he strengthens his bonds with these new Pokémon and builds on the experiences from his earlier journey through Kanto.\n\n'
                'The Johto League tournament is an intense competition where top trainers compete for the prestigious title of Johto Champion. To reach this stage, competitors must face the Elite Four, a powerful group of trainers who act as the final test for those who have earned all eight gym badges. The Johto Elite Four each have unique and powerful teams, requiring trainers to be adaptable and well-prepared for battle.\n\n'
                'The Johto League also introduces new in-game mechanics, such as the ability for Pokémon to evolve using new evolutionary stones and methods. This added complexity enriches the gameplay experience and further encourages strategic planning. The Johto region also has an emphasis on teamwork, as Ash and his friends face numerous challenges, including battling the mysterious and powerful Team Rocket.\n\n'
                'Overall, the Johto League represents a significant evolution in the Pokémon franchise, building on the foundation laid by the Indigo League while introducing fresh elements that would shape the future of the series. The journey through Johto is filled with excitement, new friendships, and important life lessons, making it an unforgettable chapter in the Pokémon universe.',
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
