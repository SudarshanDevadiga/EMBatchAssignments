abstract class Describable {
  void showDetails();
}

class BookDetails implements Describable {
  String title;

  BookDetails(this.title);

  @override
  void showDetails() {
    print('Details for book: "$title"');
  }
}