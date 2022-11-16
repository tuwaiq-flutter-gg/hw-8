import 'spaceship/fighter.dart';
import 'spaceship/shieldedShip.dart';
import 'vehicle.dart';

main(){

  //2. //Vehicle vd = Vehicle.defaultVehicle();
  //3.
  Vehicle vp = Vehicle(color: "Black" , company: "BMW" , model: "M-6" , yeaOfPrediction: 2022);
  //4.
  Vehicle vc = Vehicle.customVehicle(company: "Range Rover" , model: "Vog");
  /*Explain CustomVehicle: 
    The vc will contain a two of arguments 
    because the constructor in calss Vehicle has 
    a tow of parameters   
  */


  //--------------------------------------------------------------------------------------------

  //6.
  Fighter destroyer = Fighter(weapon: "Laser", remainingFirePower: 10 , name:"Destroyer", postion: 3 ,falcon: "Falcon" );

  print(destroyer.position);
  destroyer.moveRight();
  print(destroyer.position);

  //7.
  // destroyer.falcon = destroyer.weapon;
  /*
    'falcon' can't be Change because it's final.
    and we can't change it if we assign on it before 
  */

  //8.
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);

  //----------------------------------------------------------------------------------------------
  
  //9.
  ShieldedShip defender = ShieldedShip();
  defender.name = "Defender";
  defender.weapon = "Cannon";
  defender.position = 5;
  defender.moveRight();
  print(defender.position);
  defender.remainingFirePower = 6;
  defender.fire();
  print(defender.remainingFirePower);

   //10
  defender.wasHit();
  print("${defender.shieldStrength} , ${defender.health}");

  //11
  defender.wasHit();
  print("${defender.shieldStrength} , ${defender.health}");
  
  


}