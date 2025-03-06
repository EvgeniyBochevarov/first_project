import 'dart:io';
import 'dart:math';

void main() {
  print('Гра Вгадай Число');
  var zagadal = Random().nextInt(100) + 1;

  var otvet;

  while (otvet != zagadal) {
    stdout.write("Введіть число: ");

    String? textvvod = stdin.readLineSync();
    var textvvod1 = textvvod as String;
    otvet = num.tryParse(textvvod1);
    if (otvet == null) {
      print('Це не є число, введіть заново');
    } else if (otvet < zagadal) {
      print('Не вгадав. Загадане більше число');
    } else if (otvet > zagadal) {
      print('Не вгадав. Загадане менше число');
    }
   }
   print('Перемога!!! Загадане число: $zagadal');
}