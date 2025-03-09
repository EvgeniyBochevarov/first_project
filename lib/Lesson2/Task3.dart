

void main() {
  Map<String, String> str_map = {'Док1': 'Док № 1', 'Док2': 'Док № 2'};
  print(str_map);

  //Map<String, String> str_map1 = Map();
  str_map['Док3'] = 'Док № 3';
  print(str_map);

  print(str_map.keys);
  print(str_map.values);


  str_map.putIfAbsent('Док4', () => 'Док № 4');
  print(str_map);

  str_map['Док3'] = 'Док № 3 Новий';
  print(str_map);

  str_map.remove('Док1');
  print(str_map);

  Map<String, String> str_map_ttn = {'ТТН1': 'ТТН № 1', 'ТТН2': 'ТТН № 2'};

  str_map.addAll(str_map_ttn);

  str_map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });

  List<MapEntry> list = str_map.entries.toList();
  print(list);

}