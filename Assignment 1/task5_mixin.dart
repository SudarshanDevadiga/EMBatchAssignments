mixin Printable {
  void printData(String text) {
    print('[PRINT]: $text');
  }
}

class Report with Printable {
  void generate() {
    printData('Generating library status report...');
  }
}