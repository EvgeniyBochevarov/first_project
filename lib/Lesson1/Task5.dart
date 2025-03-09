import 'dart:io';

void main() {
  print('Калькулятор');
  print('Введіть перше число: ');
  double? shislo1 = double.tryParse(stdin.readLineSync()!);

  print('Введіть друге число: ');
  double? shislo2 = double.tryParse(stdin.readLineSync()!);
  print('Оберіть операцію (+, -, *, /)');
  String? oper = stdin.readLineSync()!;
  if (shislo1 != null || shislo2 != null) {
    switch (oper) {
      case '+':
        print(
            'Результат: $shislo1 $oper $shislo2 = ${add(shislo1!, shislo2!)}');
        break;
      case '-':
        print('Результат: $shislo1 $oper $shislo2 = ${subtract(
            shislo1!, shislo2!)}');
        break;
      case '*':
        print('Результат: $shislo1 $oper $shislo2 = ${multiply(
            shislo1!, shislo2!)}');
        break;
      case '/':
        print('Результат: $shislo1 $oper $shislo2 = ${divide(
            shislo1!, shislo2!)}');
        break;
      default:
        print('Невірна операція. Спробуйте знову.');
    }
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