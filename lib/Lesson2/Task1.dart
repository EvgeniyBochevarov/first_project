import 'dart:io';

void main() {

List<String> proizvodstvo = [];
proizvodstvo.add('Насіння');
proizvodstvo.add('Добрива');
proizvodstvo.add('Біо препарати');
proizvodstvo.add('Кава');
proizvodstvo.add('Послуги');
proizvodstvo.add('Товари');
proizvodstvo.add('Сувеніри');
proizvodstvo.add('Тара');
proizvodstvo.add('Каністри');
proizvodstvo.add('Піддони');

print(proizvodstvo);

proizvodstvo.add('Обстеження');
print(proizvodstvo);

proizvodstvo.remove('Послуги');
print(proizvodstvo);

proizvodstvo.removeAt(1);
print(proizvodstvo);

print(proizvodstvo.contains('Каністри'));

proizvodstvo.sort();
print(proizvodstvo);

List<String> newproizvodstvo = proizvodstvo.where((e) => e == 'Кава').toList();
print(newproizvodstvo);

List<String> proizvodstvo1 = [];
proizvodstvo1.add('Цукор');
proizvodstvo1.add('Вода');
proizvodstvo1.add('Кориця');

proizvodstvo.addAll(proizvodstvo1);
proizvodstvo.forEach((elem) {
  print(elem);

});
}