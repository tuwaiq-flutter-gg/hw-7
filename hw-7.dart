//import 'dart:html';

main(){
//-1
Spaceship falcon = Spaceship(name: "Falcon");
falcon.health=10;
falcon.moveLeft(1);
print("my position is ${falcon.position}");
falcon.moveRight(1);

print("my position is ${falcon.position}");
print("my health is ${falcon.health}");
falcon.wasHit();
print("my health is ${falcon.health}");
falcon.wasHit();
print("my health is ${falcon.health}");

}

class Spaceship {
String? name;
int health=0, position=0;  


  Spaceship({this.name});

moveLeft(int posi ) {

position  -=posi;
}

moveRight(int posi){
  position += posi;
}

wasHit(){

health =health - 5;

if(health <=0){

    print("Sorry, your ship was hit too many times. Do you want to play again?");

    }
}

}

