import 'task1_class.dart';
import 'task2_constructor.dart';
import 'task3_methods.dart';
import 'task4_inheritance.dart';
import 'task5_mixin.dart';
import 'task6_interface.dart';
import 'task7_list.dart';
import 'task8_map.dart';
import 'task9_set.dart';
import 'task10_library.dart';

void main() {
  print('--- Task 1 ---');
  Book book = Book('The Alchemist', 'Paulo Coelho');
  book.display();

  print('\n--- Task 2 ---');
  Student student = Student('Mahesh', 19);
  student.display();

  print('\n--- Task 3 ---');
  Calculator calculator = Calculator();
  print('5 + 3 = ${calculator.add(5, 3)}');

  print('\n--- Task 4 ---');
  PremiumMember member = PremiumMember('Aman');
  member.displayRole();

  print('\n--- Task 5 ---');
  Report report = Report();
  report.generate();

  print('\n--- Task 6 ---');
  BookDetails details = BookDetails('Atomic Habits');
  details.showDetails();

  print('\n--- Task 7 ---');
  listExample();

  print('\n--- Task 8 ---');
  mapExample();

  print('\n--- Task 9 ---');
  setExample();

  print('\n--- Task 10 ---');
  libraryDemo();
}