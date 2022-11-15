import 'dart:math';

void main() {
  Spaceship falcon = Spaceship();
  falcon.moveLeft();
  falcon.moveRight();
  falcon.wasHit();
  falcon.movement();

  BankClient clint = BankClient(name: "khaled", balance: 18000000.1);
  print(clint.getBalance());
  print(clint.getName());
  print(clint.id);
}

//1
class Spaceship {
  String? name = "";
  int position = 0;
  int health = 0;
//2
  static const falcon = "falcon ";

// 3
  moveLeft() {
    position -= 2;
  }

  moveRight() {
    position++;
  }

  movement() {
    if (position == 0) {
      print("center ");
    } else if (position > 0) {
      print("right");
    } else {
      print("left");
    }
  }
  //4

  wasHit() {
    health = 100;
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times Do you want to play again?");
    } else {
      health = -5;
      print("your hit  $health}");
    }
  }
}

//5
class BankClient {
  int? id = Random().nextInt(1000);
  String? name = "";
  double? balance = 0;
//8
  BankClient({this.name, this.id, this.balance}) {
    print("clint info is ${name} ${id} balance = ${balance} ");
  }
//6
  getBalance() {
    balance = 30;
    return;
  }

  getName() {
    name = "khaled";
    return;
  }

//7
  deposit({double? amount}) {
    balance = balance! + amount!;
    print("after deposit = $balance");
    return balance;
  }

  withdraw(double amount) {
    if (amount < balance!) {
      balance = amount;
      print(balance);
    } else {
      print(balance);
    }
  }
}
