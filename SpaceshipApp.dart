main(){
  //_________________2_________________
  //Create a constant called falcon.
  Spaceship falcon =Spaceship();
  falcon.name="Falcon";
 //_________________3_________________
 //call and print out the value of position.
  falcon.moveLeft();
  print(falcon.position);
  falcon.moveLeft();
  print(falcon.position);
  falcon.moveRight();
  print(falcon.position);
  //_________________4_________________
  //call and print out the value of health.
  falcon.wasHit();
  print(falcon.health);

}

//_________________1_________________
//Create a Spaceship class with three variable properties: name, health, and position
class Spaceship{
String? name=""; 
int health=0;
int? position=0; //negative = left, positive=right
//_________________2_________________
//Create a constant called falcon 
static String falcon="Falcon";
// Spaceship(this.name,this.health,this.position){
// }
//_________________3_________________
//add a function called moveLeft()
//position of the spaceship to the left by one
moveLeft(){
position=position!-1;
}
//moves the spaceship to the right
moveRight() {
position=position!+1;
}
//use them to move falcon to the left twice and to the right once
//________________4_________________
//add a function wasHit() decrement the ship's health by 5
wasHit(){
  health= health-5;
if (health <= 0){ 
print("Sorry, your ship was hit one too many times. Do you want to play again?");
}
}

}