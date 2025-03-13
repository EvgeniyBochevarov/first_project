void main() {
  Student student_1 = Student('Галина', 3, 'Химия');
  student_1.infostuden();

  Student student_2 = Student('Евгений', 1, 'Информатика');
  student_2.infostuden();

  Student student_3 = Student('Наталья', 4, 'Педагогика');
  student_3.infostuden();

}

class Student {
  String studentImy;
  int kyrs;
  String specialn;

  Student(this.studentImy, this.kyrs, this.specialn);

  void infostuden() {
    print('Имя: $studentImy Курс: $kyrs Специальность: $specialn');
  }
}