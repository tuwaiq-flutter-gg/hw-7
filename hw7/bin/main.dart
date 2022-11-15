import 'packages.dart';

void main(List<String> arguments) {
// Spaceship App
print("\x1b[1;36m\nSpaceship App\x1b[0m");
print("\x1b[1;36m-------------\x1b[0m");
Spaceship sp = Spaceship(name: "Sarah" , falcon: "Falcon" , health: -1 ,position: -3);
sp.moveLeft();//Move twice from left
sp.moveRight(); //Move Once from right
sp.wasHit();

//Bank App
print("\x1b[1;36m\nBank App\x1b[0m");
print("\x1b[1;36m-------------\x1b[0m");
BankClient b = BankClient(name: "Sara" ,balance: 5);
b.withdraw(50);
}
