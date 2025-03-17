import 'dart:io';

void main() {
  print('Конвертер часу');
  print('Введіть значення часу: ');
  double? vrem = double.tryParse(stdin.readLineSync()!);

  if (vrem != null) {
    print('Введіть цифру варіант конвертації: ');
    var textV = '''
    1. Години в хвилини
    2. Години в секунди
    3. Мінути в години
    4. Мінути в секунди''';
    print(textV);
    int? choice = int.tryParse(stdin.readLineSync()!);
    final message = switch (choice) {
      1 => 'Результат: ${hoursToMinutes(vrem)} хвилин',
      2 => 'Результат: ${hoursToSeconds(vrem)} секунд',
      3 => 'Результат: ${minutesToHours(vrem)} годин',
      4 => 'Результат: ${minutesToSeconds(vrem)} секунд',
      _ => 'Невірний вибір. Спробуйте знову.',
    };

    print(message);
   } else {
    print('Введіть корректне число.');
  }
}

double hoursToMinutes(double hours) {
  return hours * 60;
}

double hoursToSeconds(double hours) {
  return hours * 3600;
}

double minutesToHours(double minutes) {
  return minutes / 60;
}

double minutesToSeconds(double minutes) {
  return minutes * 60;
}