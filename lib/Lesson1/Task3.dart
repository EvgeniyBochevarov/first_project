import 'dart:io';

void main() {
  print('Сума всіх чисел від 1 до n');
  print('Введіть позитивне ціле число: ');
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number != null && number > 0) {
    int sum = 0;
    int i = 1;

    while (i <= number) {
      sum += i;
      i++;
    }

    print('Сумма всіх чисел от 1 до $number = $sum');
  } else {
    print('Введіть корректне ціле позитивне число.');
  }
}
