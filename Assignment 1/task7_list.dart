void listExample() {
  List<String> books = ['The Alchemist', '1984', 'Atomic Habits'];
  print('List of Books:');
  for (var book in books) {
    print('- $book');
  }
}