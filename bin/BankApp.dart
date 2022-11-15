void main(List<String> args) {
  bankClient b = bankClient(name: "Rakan");
  print("the name is ${b.getName} and the balance is ${b.balance}");
  b.deposit(10000);
  b.withdraw(4859.54);

  print(b.toString());
}

// task:5
class bankClient {
  static int ids = 1;
  late int id;
  final String name;
  double balance = 0;

  bankClient({required this.name}) {
    id = ids++;
    balance = 0;
  }
  // task:6
  String? get getName => name;
  double get getBalance => balance;

  // task:7
  double deposit(double amount) => balance += amount;
  double withdraw(double amount) => balance -= amount;
  @override
  String toString() {
    return super.toString() + "\nid:$id\nname:$name\n$balance";
  }
}
