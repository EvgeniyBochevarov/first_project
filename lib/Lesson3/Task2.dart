void main() {
  Animal an1 = Animal('Тигр', 3);
  an1.dorosla();

  Animal an2 = Animal.imenov(vid: 'Обезьяна');
  an2.dorosla();

  Animal an3 = Animal.imenov(vid: 'Птица', vozrast: 5);
  an3.dorosla();

}

class Animal {
  String vid;
  int vozrast;

  Animal(this.vid, this.vozrast);
  Animal.imenov({required this.vid, this.vozrast = 0});

  void dorosla() {
    if (vozrast > 2) {
      print('Животное: $vid Взрослое');
    } else {
      print('Животное: $vid Новорожденное');

    }
  }
}