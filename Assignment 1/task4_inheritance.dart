class Member {
  String name;

  Member(this.name);

  void displayRole() {
    print('Standard Member: $name');
  }
}

class PremiumMember extends Member {
  PremiumMember(String name) : super(name);

  @override
  void displayRole() {
    print('Premium Member: $name (Free delivery & extended loan duration)');
  }
}