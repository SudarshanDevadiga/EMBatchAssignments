import 'task1_class.dart';
import 'task4_inheritance.dart';

class Library {
  final List<Book> _books = [];
  final List<Member> _members = [];

  void addBook(Book book) => _books.add(book);
  void registerMember(Member member) => _members.add(member);

  void showSummary() {
    print('\n--- Library Summary ---');
    print('Total Books: ${_books.length}');
    print('Total Members: ${_members.length}');
  }
}

void libraryDemo() {
  var lib = Library();
  lib.addBook(Book('The Alchemist', 'Paulo Coelho'));
  lib.registerMember(PremiumMember('Aman'));
  lib.showSummary();
}