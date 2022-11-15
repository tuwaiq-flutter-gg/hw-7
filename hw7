main(){

  //// 2 ////
 Spaceship falcon = Spaceship();
   falcon.name = "Falcon" ;
//// 3 ////
print(falcon.position);
   falcon.moveLeft();
   print(falcon.position);
   falcon.moveLeft();
   print(falcon.position);
   falcon.moveRight();
   print(falcon.position);

 falcon.wasHit();
   print("the current health = ${falcon.health}");

}

//// 1 ////
class Spaceship {

  String? name;
  int health =0;
  int position =0;
  


//// 3 ////
  moveLeft(){
   position = position! + 1 ;
     print("moved left");

  }

//// 3 ////
  moveRight(){


     position = position! - 1 ;
     print("moved right");

  }
}
//// 4 ////
 wasHit(){
  wasHit() {
      health = health! - 5;
     if (health! <= 0) {
       print("Sorry, your ship was hit one too many times. Do you want to play again? ");
     }
  }
 
 }
 //// 5 ////
class bankClient {
 var id;
   String? name;
  double? balance = 0;

   int client = 1;
   automatically_generatedID() {
     return id = client++;
   }
   //// 6 ////
getBalance(){
  print("your balance is : $balance ");
     return balance ;


}
getName(){

print(" your name is : $name");
     return name ;

}

}

//// 7 ////
 deposit({ double? amount }){
     balance = balance! + amount! ;
     print("your balance after deposit : $balance");
     return balance;
   }
