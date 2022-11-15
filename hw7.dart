import 'dart:ffi';
import 'dart:math';

main(){

Spaceship falcon= Spaceship(name: "falcon");

falcon.moveLeft(num: 2);
falcon.moveRight(num: 1);
print(falcon.position);
print("health at ${falcon.health}");
print("was hit");
falcon.wasHit();

//ban;client

bankClient b1=bankClient(name: "muhammed");
print("bank");
print(b1.getName());
print(b1.getBalance());

b1.deposit(add: 10);
print(b1.getBalance());

b1.withdraw(sub: 5);
print(b1.getBalance());

b1.withdraw(sub: 50);

print(b1.getName());
print(b1.getBalance());
}


// Spaceship app

class Spaceship{

  String? name="";
  int? health=0,position=0;

  Spaceship({this.name });

  moveRight({int? num}){

    this.position=this.position!+num!;

  }

 moveLeft({int? num}){
    this.position=(this.position!-num!);

  }

wasHit(){


  health=health!-5;

  if(health!<=0){
    
    print("Sorry, your ship was hit one too many times. Do you want to play again?");
    
    }

}


}


// Bank app

class bankClient{

  static int? setId=1;
  late final int id;
  late final String name;
  num? balance=0;
  
bankClient({required this.name}){
id=setId!;
setId=setId!+1;
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

withdraw({double? sub}){
  if(this.balance!<sub!){
    print("Operation Failed! The amount is greater than your balance");
  }else{
this.balance=this.balance!-sub;
return getBalance();
  }
}



}