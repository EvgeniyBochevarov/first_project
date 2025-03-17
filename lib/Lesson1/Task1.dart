import 'dart:io';

void main() {
  var numMonth;
  while (numMonth == null) {
    print('Введіть номер дня тижня: ');
    String? input = stdin.readLineSync();

    numMonth = int.tryParse(input!);

    if (numMonth == null) {
      print('Введено не коректно. Введіть ще раз');
    }
  }

  if (numMonth < 1 || numMonth > 7) {
    print("Це число не є номером дня тижня");
  } else if (numMonth == 1) {
    print('Понеділок');
  } else if (numMonth == 2) {
    print('Вівторок');
  } else if (numMonth == 3) {
    print('Середа');
  } else if (numMonth == 4) {
    print('Четвер');
  } else if (numMonth == 5) {
    print("П'ятниця");
  } else if (numMonth == 6) {
    print('Субота');
  } else if (numMonth == 7) {
    print('Неділя');
  }
}
