
class PopularLeague {
  String name;
  String iconPath;
  String difficulites;
  String duration;
  String partners;
  bool boxIsSelected;

  PopularLeague({
    required this.name,
    required this.iconPath,
    required this.difficulites,
    required this.duration,
    required this.partners,
    required this.boxIsSelected,
  });

  static List< PopularLeague > getPopularLeague(){
    List < PopularLeague > popularLeague = [];

    popularLeague.add(
      PopularLeague(
        name: 'Indigo',
        iconPath: 'assets/icons/kanto.svg',
        difficulites: 'Starter',
        duration: 'LONG',
        partners: 'Misty',
        boxIsSelected: true
        )
    );

    popularLeague.add(
      PopularLeague(
        name: 'Orange',
        iconPath: 'assets/icons/orange.svg',
        difficulites: 'Medium',
        duration: 'Short',
        partners: 'Misti',
        boxIsSelected: true)
    );

    popularLeague.add(
      PopularLeague(
        name: 'Jhoto',
        iconPath: 'assets/icons/jhoto.svg',
        difficulites: 'Medium',
        duration: 'LONG',
        partners: 'Misti',
        boxIsSelected: true
        )
    );
    return popularLeague;
  }
}