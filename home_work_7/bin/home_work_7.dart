import 'Object&Class.dart';
import 'Bank.dart';

void main() {
  Spaceship Falcon = Spaceship();
  Falcon.name_s();
  Falcon.moveLeft();
  Falcon.moveLeft();
  Falcon.moveRight();
  Falcon.where_P();
  Falcon.wasHit();

  bankClient bank_a = bankClient(name: "khaled", balance: 2000);
  bank_a.deposit(1000);
  bank_a.withdraw(50);
  bankClient bank_a1 = bankClient(name: "Ali", balance: 400);
  bank_a1.withdraw(1000);
}
