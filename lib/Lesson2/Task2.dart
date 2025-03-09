import 'dart:io';

void main() {
  Set<int> set_primer1 = {1, 3, 5, 7};
  print(set_primer1);

  Set<int> set_primer2 = {3, 5, 8, 10};
  print(set_primer2);

  set_primer1.add(10);
  print(set_primer1);

  set_primer2.addAll([3, 9, 15]);
  print(set_primer2);
  
  set_primer1.remove(5);
  print(set_primer1);
  
  set_primer2.removeAll({9, 16});
  print(set_primer2);

  Set<int> union_1 = set_primer1.union(set_primer2);
  print(union_1);

  Set<int> inter_1 = set_primer1.intersection(set_primer2);
  print(inter_1);

  Set<int> dif_1 = set_primer1.difference(set_primer2);
  print(dif_1);

}