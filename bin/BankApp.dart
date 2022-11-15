void main(List<String> args) {
  bankClient b = bankClient(id: 111, name: "Rakan", balance: 2000.9);
  print("the name is ${b.getName} and the balance is ${b.balance}");
  b.deposit(10000);
  b.withdraw(4859.54);

  print(b.toString());
}

// task:5
class bankClient {
  int id = 1;
  late final String? name;
  double balance = 0;

  bankClient({required this.id, required this.name, required this.balance});
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
