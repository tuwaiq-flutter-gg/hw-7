import 'package:hw7/hw7.dart' as hw7;

void main(List<String> arguments) {
  //#2
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  //#3
  falcon.moveLeft(2);
  falcon.moveRight(1);
  print(falcon.position); //test moving
  //#4
  falcon.wasHit(true);

  //#8
  bankClient(name: "Mansour", balance: 500);
  bankClient user1 = bankClient(name: "Mansour", balance: 500);
  user1.getBalance();
  user1.getName();
  user1.deposit(200);
  user1.withdraw(400);
}

//#1
class Spaceship {
  String? name;
  int health = 0;
  int position = 0;
  //#3
  moveLeft(int move) {
    position -= move;
  }

  moveRight(int move) {
    position += move;
  }

  //#4
  wasHit(bool hit) {
    if (hit = true) {
      health -= 5;
    }
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

//#5
class bankClient {
  int id = 0;
  String? name;
  double balance = 0.0;

  bankClient({String? name, double? balance}) {
    this.name = name;
    this.balance = balance!;
    id += 1;
    print("User ID: $id");
  }
//#6
  getBalance() {
    return balance;
  }

  getName() {
    return name;
  }

//#7
  deposit(double deposit) {
    balance = balance + deposit;
    print("the new balance: $balance");
  }

  withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("the new balance: $balance");
    } else
      print("Operation Failed! The amount is greater than your balance");
  }
}
