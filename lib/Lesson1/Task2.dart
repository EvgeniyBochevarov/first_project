import 'dart:io';
import 'dart:math';

void main() {
  print('Гра Вгадай Число');
  var zagadal = Random().nextInt(100) + 1;

  var otvet = 0;
  while (otvet != zagadal) {
    stdout.write("Введіть число: ");
    otvet = int.parse(stdin.readLineSync()!);

    if (otvet < zagadal) {
      print('Не вгадав. Загадане більше число');
    } else if (otvet > zagadal) {
      print('Не вгадав. Загадане менше число');
    }
   }
   print('Перемога!!! Загадане число: $zagadal');
}