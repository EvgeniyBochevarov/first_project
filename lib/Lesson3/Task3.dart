
mixin Playing {
  void play() {
    print('Играет музыка');
  }
}

class Piano with Playing {
  void play() {
    print('Играет пиано');
  }
}

class Guitar with Playing {
  void play() {
    print('Играет гитара');
  }
}

void main() {
  Piano piano = Piano();
  Guitar guitar = Guitar();
  piano.play();
  guitar.play();

}