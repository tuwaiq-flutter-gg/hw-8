import 'hw7.dart';

main(){

// 2 //
// DefaultVehicle p1 = DefaultVehicle();
// print(p1.DefaultVehicle);
// 3 //
Vehicle v1 = Vehicle();
 // 4 //
 
 //customVehicle c =customVehicle(1, 2);
 // it give only the 2 parameters 

// 6 //
Fighter f1 =Fighter();
f1.weapon="Laser";
f1.remainingFirePower=10;
f1.name="Destroyer";
print(f1.position);
f1.moveRight();
print(f1.position);

// 8 //
print(f1.fire(remainingFirePower: 12));
print(f1.fire(remainingFirePower: 2));
print(f1.fire(remainingFirePower: -2));

// 9 //
ShieldedShip s =ShieldedShip();
s.name="Defender";
s.weapon="Cannon";
s.moveRight();
print(s.position);
s.fire(remainingFirePower: 2);
print(s.remainingFirePower);
// 10 //
s.wasHit();
print(s.shieldStrength);
print(s.health);






ShieldedShip sh =ShieldedShip();
sh.weapon = "Cannon";
}
















// 1 //
class Vehicle {
  var model;
  var yeaOfPrediction;
  var company;
  var color;

// 3 //
  Vehicle({var model , var yeaOfPrediction , var company, var color}){
this.model;
this.yeaOfPrediction;
this.company;
this.color;

  }
// 1 //
vehicle1(){

}
vehicle2(){

}

}

 // 2 //
class DefaultVehicle {

// DefaultVehicle (){

// print("This is the default constructor");
  
// }

}

// 4 //
class customVehicle  extends Vehicle{
  customVehicle(super.model , super.company);






}
// 6 //
class Fighter extends Spaceship {
String?  weapon;
int? remainingFirePower =5;
var destroyer;

// 8 //
  fire({required int remainingFirePower}){
    this.remainingFirePower;
    if(remainingFirePower>0 ) {
      remainingFirePower= remainingFirePower-1;

    } else {
      print("You have no more fire power.");

    }
  }
}

// 7 //
/// I can't use Fighter in Spaceship because when we  inhert from Spaceship class Fighter can use functions of Spaceship but Spaceship can't 

// 9 //
class ShieldedShip extends Fighter {
int shieldStrength = 25;
String? defender = "Defender";


// 10 //
 @override 
 wasHit() {
  if (shieldStrength>0){
    shieldStrength = shieldStrength-5;
    
  } else {

    health = health-5;
  }


 } 
}
