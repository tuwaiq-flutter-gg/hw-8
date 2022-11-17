main(){
  Spaceship falcon= Spaceship();
  //________________6____________________
  Fighter desroyer= Fighter();
  desroyer.weapon="Laser";
  desroyer.remainingFirePower=10;
  desroyer.name="Destroyer";
  print(desroyer.position);
  desroyer.moveRight();
  print(desroyer.position);
  //________________7____________________
  //print(falcon.weapon);
  //can't print becouse the value weapon declerade in class Fighter and i call in class Spaceship
  //________________8____________________
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
  desroyer.fire();
 //________________9____________________
ShieldedShip defender= ShieldedShip();
defender.name="Defender";
defender.weapon="Cannon";
defender.moveRight();
print(defender.position);
defender.fire();
print(defender.remainingFirePower);
 //________________10____________________
 defender.wasHit();
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 //________________11____________________
 defender.wasHit();
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 print("defender shield Strength ${defender.shieldStrength} and the helthy is ${defender.health}");
 
}
//________________5____________________
class Fighter extends Spaceship{
String weapon= "";
int remainingFirePower=5;
//________________8____________________
fire(){
  if(remainingFirePower>0){
    remainingFirePower=remainingFirePower-1;
    print(remainingFirePower);
  }else{
    print("You have no more fire power.");
  }
}
}

class Spaceship{
String? name=""; 
int health=0;
int? position=0; 
static String falcon="Falcon";
moveLeft(){
position=position!-1;
}
moveRight() {
position=position!+1;
}
wasHit(){
  health= health-5;
if (health <= 0){ 
print("Sorry, your ship was hit one too many times. Do you want to play again?");
}
}

}
//________________9____________________
class ShieldedShip extends Fighter{
  int shieldStrength=25;
//________________10____________________
@override
wasHit() {
    if(shieldStrength>0){
      shieldStrength= shieldStrength-5;
    }else{
     // health=health-5;
//________________11____________________   
super.wasHit();  
    }
  }
}