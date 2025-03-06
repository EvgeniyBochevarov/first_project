import 'dart:io';

void main() {

  stdout.write("Введіть номер дня тижня: ");
  String? textvvod = stdin.readLineSync();
  var textvvod1 = textvvod as String;
  var number = num.tryParse(textvvod1);
    if (number == null) {
      print('Це не є число');
    } else if (number < 1 || number > 7) {
      print("Це число не є номером дня тижня");
    } else if (number == 1) {
      print('Понеділок');
    } else if (number == 2) {
      print('Вівторок');
    } else if (number == 3) {
      print('Середа');
    } else if (number == 4) {
      print('Четвер');
    } else if (number == 5) {
      print("П'ятниця");
    } else if (number == 6) {
      print('Субота');
    } else if (number == 7) {
      print('Неділя');
    }
}