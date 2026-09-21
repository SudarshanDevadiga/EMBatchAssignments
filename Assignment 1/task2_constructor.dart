class Student {
  String name;
  int age;

  Student(this.name, this.age);

  Student.named({required this.name, required this.age});

  void display() {
    print('Student Name: $name, Age: $age');
  }
}