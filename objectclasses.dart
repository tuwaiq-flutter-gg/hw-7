
void main(List<String> args) {
  
  // 2
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon" ;

  // 3
  falcon.moveLeft();
  print("${falcon.name} position : ${falcon.position}");

  falcon.moveLeft();
  print("${falcon.name} position : ${falcon.position}");

  falcon.moveRight();
  print("${falcon.name} position : ${falcon.position}");

  // 4
  falcon.wasHit();
  print("value of health : ${falcon.health}");

  // 8
  bankClient bank = bankClient(name: "Shatha") ;



}

// 1
class Spaceship {
  String? name = "" ;
  num? health = 0 ;
  int? position = 0 ;

  // 3
  moveLeft(){
    position = position! + 1 ;
    print("moved left");
  }

  moveRight(){
    position = position! - 1 ;
    print("moved right");
  }

  // 4
  wasHit(){
    health = health! - 5 ;
    if ( health! <= 0 ) {
      print("Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }

}


// 5
class bankClient {
  int? id ;
  static int? generator = 111 ;
  final String? name ;
  double? balance = 0 ;

  // 8
  bankClient({ required this.name}){
    id =  generator;
    generator = generator! + 1 ;
    print("Bank account for $name has created succesfully ");

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

  // 7 
  deposit({ double? amount }){
    balance = balance! + amount! ;
    print("your balance after deposit : $balance");
    return balance;
  }

  withdraw({ double? amount }){
    if (amount! < balance! ) {
      deposit(amount: ( amount * -1 ));
      print("your balance after widthraw : $balance");
    }else{
      print("Operation Failed! The amount is greater than your balance");
    }
  }
}

