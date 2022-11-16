import 'dart:math';

 void main() {
   Spaceship falcon = Spaceship();
   falcon.moveLeft();
   falcon.moveRight();
   falcon.wasHit();
   falcon.movement();

   BankClient clint = BankClient(name: "Nouf", balance: 10000.);
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
     } 
   }
 }

 //5
 class BankClient {
   int? id = Random().nextInt(1000);
   String? name = "";
   double? balance = 0;
  
  bankClient({required this.name}){

}
  getBalance(){

  return this.balance;
}

getName(){

  return this.name;
}

deposit({double? add}){
this.balance=this.balance!+add!;
return getBalance();
}
}
