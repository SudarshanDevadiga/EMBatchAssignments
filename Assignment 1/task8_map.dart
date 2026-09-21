void mapExample() {
  Map<String, String> bookAuthors = {
    'The Alchemist': 'Paulo Coelho',
    'Atomic Habits': 'James Clear',
    '1984': 'George Orwell',
  };

  print('Book-Author Registry:');
  bookAuthors.forEach((book, author) {
    print('$book -> $author');
  });
}