import 'package:hw7/hw7.dart' as hw7;
import 'dart:math';

 main() {
  //.......2.......
  Spaceship falcon=Spaceship();
  falcon.name="Falcon";
  //////////////////////////////////////
  ///....3.....
   falcon.moveLeft();
   print("Moved to position : ${falcon.position}");
   falcon.moveLeft();
   print("Moved to position : ${falcon.position}");
   falcon.moveRight();
   print("Moved to position : ${falcon.position}");
//..........4..........
falcon.wasHit();
 print(falcon.health);
 //.......8........
 bankClient custam = bankClient(id: 897654321, name: "khuloud", balance: 99.7);












 
}
//.....1......
class Spaceship{
 String?name;
 num health=0;
 int position =0;
//.......3.........
moveLeft(){

  position --;
  
}
moveRight(){

  position ++;
  
}
//.....4....

      wasHit(){
         health -= 5;
         if (health <= 0){
             print("Sorry. Your ship was hit one too many times. Do you want to play again?");
         }
}

}
//.......5......
 class bankClient{
  int ?id ;
   String? name;
  double? balance =0;
  int clientnum=0;

   int client = 1;
   UpditId () {
     return id = client++;
   }
  

   
//.......6..........
getBalance(){

  return print("your balance = $balance");

}
getName(){
  return print("your balance = $name");

}
 //.......7.........


   deposit({double?amount}){
     var balance1;
      balance1= balance!+amount!;
      print("YOUR NEW BALANCE AFTER DEPOSIT $balance1 ");
      return balance1;
   }

   withdraw({double?amount}){

      if(balance!>amount!){
       var newbalance;
       newbalance=balance!-amount;
       print("YOUR NEW BALANCE IS $newbalance");

       return newbalance;

      }else{
       print("Operation Failed!");
      }

 }
   //.....8..........
   bankClient({var id, String? name, double? balance}) {
     this.id = id;
     this.name = name;
     this.balance = balance!;
   }
 
 }
 /////


   