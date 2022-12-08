class Student {
  Student({required this.name, required this.age, required this.career});
  String name;
  int age;
  Career career;

  bool operator ==(covariant Student other) {
    return true;
  }
}

enum Career { mechatronics, mechanics, industrial, electrical }
