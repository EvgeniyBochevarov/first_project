import 'dart:io';

void main() {
  double? number1;
  double? number2;

  print('Калькулятор');

  while (number1 == null) {
    print('Введіть перше число: ');
    String? input = stdin.readLineSync();

    number1 = double.tryParse(input!);

    if (number1 == null) {
      print('Введено не коректне число. Введіть ще раз');
    }
  }

  while (number2 == null) {
    print('Введіть друге число: ');
    String? input = stdin.readLineSync();

    number2 = double.tryParse(input!);

    if (number2 == null) {
      print('Введено не коректне число. Введіть ще раз');
    }
  }

  print('Оберіть операцію (+, -, *, /)');
  String? oper = stdin.readLineSync()!;
  switch (oper) {
    case '+':
      print('Результат: $number1 $oper $number2 = ${add(number1!, number2!)}');
      break;
    case '-':
      print(
        'Результат: $number1 $oper $number2 = ${subtract(number1!, number2!)}',
      );
      break;
    case '*':
      print(
        'Результат: $number1 $oper $number2 = ${multiply(number1!, number2!)}',
      );
      break;
    case '/':
      print(
        'Результат: $number1 $oper $number2 = ${divide(number1!, number2!)}',
      );
      break;
    default:
      print('Невірна операція. Спробуйте знову.');
  }
}

double add(double ch1, double ch2) {
  return ch1 + ch2;
}

double subtract(double ch1, double ch2) {
  return ch1 - ch2;
}

double multiply(double ch1, double ch2) {
  return ch1 * ch2;
}

double divide(double ch1, double ch2) {
  return ch1 / ch2;
}
