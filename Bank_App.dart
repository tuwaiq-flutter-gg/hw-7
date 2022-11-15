import 'dart:math';

main() {
  //[8] solution
  var client1 = bankClient(name: "First");
  print(
      "Client (${client1.name}) with id (${client1.id}) have (${client1.balance})");
  client1.deposit(100);
  client1.withdraw(200);
  client1.withdraw(50);
  print(
      "Client Name is (${client1.getName}) and his balance is (${client1.getBalance})");
  var client2 = bankClient(id: 55, name: "Second", balance: 500);
  print(
      "Client (${client2.name}) with id (${client2.id}) have (${client2.balance})");
}

//[5] solution
class bankClient {
  int id = Random().nextInt(1000) + 1;
  final String name;
  double balance = 0;

  //[6] solution
  get getBalance {
    return balance;
  }

  get getName {
    return name;
  }

  //[7] solution
  deposit(double amount) {
    balance += amount;
    print("Client balance now is ($balance)");
    return balance;
  }

  withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Client balance now is ($balance)");
    } else {
      print("Operation Failed! The amount is greater than your balance");
    }
  }

  //[8] solution
  bankClient({int? id, required this.name, double? balance}) {
    if (id != null) {
      //---check if its null because we want to preserve the initial assignment
      this.id = id;
    }
    if (balance != null) {
      //---check if its null because we want to preserve the initial assignment
      this.balance = balance;
    }
    print("Created bankClient instance");
  }
}
