main() {
  //Q8
  bankClient account1 = bankClient(name: "Faisal", balance: 100);
  //account1.name = "Fais"; //I cant change the name
  //print(account1.id);
  print("The account ID is ${account1.id}");
  print("The account Name is ${account1.getName()}");
  print("The account Balance is ${account1.getBalance()}");
  bankClient account2 = bankClient(name: "Ahmed", balance: 500);
  //print(account2.id);
  account1.deposit(100);
  account1.withdraw(100);
  account1.withdraw(150);
}

int t = 1; //for setting the id of accounts start with 1

//Q5
class bankClient {
  int? id;
  final String name;
  double balance = 0;

  //Q8
  bankClient({required this.name, required double balance}) {
    this.balance = balance;
    id = t;
    t++;
  }
  //Q6
  getBalance() {
    return balance;
  }

  getName() {
    return name;
  }

  //Q7
  deposit(double amount) {
    balance += amount;
    print("The new Balance after deposite = $balance");
  }

  withdraw(double amount) {
    if (amount < balance) {
      balance -= amount;
      print("The new Balance after withdraw = $balance");
    } else {
      print(
          "Operation Failed! The amount $amount is greater than your balance $balance");
    }
  }
}
