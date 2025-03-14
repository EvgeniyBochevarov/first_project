
abstract class Playable {
  void play() {}
}

class Soccer implements Playable {
  @override
  void play() {
    print('Футбол');
  }
}

class Basketball implements Playable {
  @override
  void play() {
    print('Баскетбол');
  }
}

class SportsClub {

  void addSport(Playable) {
    Playable.play();
  }

}

void main() {
  Soccer soccer = Soccer();
  Basketball basketball = Basketball();

  SportsClub club = SportsClub();
  club.addSport(soccer);
  club.addSport(basketball);
}


