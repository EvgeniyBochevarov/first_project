import 'package:collection/collection.dart';

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

  List<String> proizvodstvo1 = [];
  proizvodstvo1.add('Насіння');
  proizvodstvo1.add('Добрива');
  proizvodstvo1.add('Біо препарати');
  proizvodstvo1.add('Кава');
  proizvodstvo1.add('Послуги');
  proizvodstvo1.add('Товари');
  proizvodstvo1.add('Сувеніри');
  proizvodstvo1.add('Тара');
  proizvodstvo1.add('Каністри');

  var sravni = ListEquality();
  print(sravni.equals(proizvodstvo, proizvodstvo1));

  var zip = IterableZip([proizvodstvo, proizvodstvo1]);
  print(zip.toList());
}