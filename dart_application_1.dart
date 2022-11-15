//1
import 'Spaceship.dart';
import 'bankClient.dart';

class Spaceship {
  String? name = "";
  num? health = 0;
  int? position = 0;
}

Spaceship({this.name, this.health, this.position}) {}

moveLift() {
  position = position! - 1;
  print("to lift");
}

moveRight() {
  position = position! + 1;
  print("to right");
}

wasHit() {
  health = health! - 5;
  if (health! <= 0) {
    print(
        "Sorry, your ship was hit one too many times. Do you want to play again?");
  }
}

//3
moveRight() {
  position += 1;
}
//4

wasHit() {
  health -= 5;
  if (health <= 0) {
    print(
        "Sorry. Your ship was hit one too many times. Do you want to play again?");
  }
  falcon.wasHit();
  print(falcon.health);
}

// 5
class bankClient {
  int? id;
  static int? generator = 111;
  final String? name;
  double? balance = 0;
}
// 6
  getBalance(){
    print("here is your balance : $balance ");
    return balance ;
  }

  getName(){
    print("here is your name : $name");
    return name ;
  }
//7 
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
    bankClient({int? id , String?name , int?balance }){
      print("$name your id is $id ,and your balance is $balance ");
    }
 // 8
  bankClient bank = bankClient(name: "Zahra") ;

  bankClient({ required this.name}){
    id =  generator;
    generator = generator! + 1 ;
    print("Bank account for $name has created succesfully ");

  } 
  }
  

