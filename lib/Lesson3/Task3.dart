mixin Playing {
  void play(String namePlay) {
    print('Играет $namePlay');
  }
}

class Piano with Playing {}

class Guitar with Playing {}

void main() {
  Piano piano = Piano();
  Guitar guitar = Guitar();
  piano.play('Пианино');
  guitar.play('Гитара');
}
