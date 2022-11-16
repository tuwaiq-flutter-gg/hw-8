import 'SpaceshipFighter.dart';
import 'Vehicle.dart';

main() {
  //1 & 2 part1 in class Vehicle

  // //2part2
  // Vehicle defCons = Vehicle.defaultVehicle();

  //3part2
  Vehicle vehicle1 = Vehicle(
      model: "car", yeaOfPrediction: "2020", Company: "Nissan", color: "red");

  //4part2
  Vehicle vehicle2 = Vehicle.customVehicle(model: "Truck", Company: "Commer");
  //4part3
  // vehicle1.printVehicle();
  // vehicle2.printcustomVehicle();
  // vehicle2.printVehicle();
  // It is not clear from which side to explain the result exactly.But using the concept of named constructors made me set up a lot of constructors and assign it a specific parameter so that it makes it easier to use. From my point of view, I see it the same for those who put the parameter of constructor in curly brackets. You will not force me to set an object for a particular class. I know all the parameter and they both spend at a certain point, which is facing the null output of the unused parameter if no values are assigned to it

  //solution 5part1 in file name (SpaceshipFighter.dart)
  //5part2

  //6
  Fighter destroyer = Fighter();
  destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  destroyer.name = "Destroyer";
  print(destroyer.position);
  destroyer.moveRight();
  print(destroyer.position);

  //7
  // Spaceship falcon = Spaceship();
  // falcon.name = "Falcon";
  // print(falcon.wepon);
  // //Because the Spaceship class is considered in the concept of inheritance to be the father, while the Fighter Class is considered to be the son and will inherit from his father. In this case, it will not work because the relationship of inheritance is not reversed. The father does not inherit from his son at all

  //8part2
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();
  destroyer.fire();

  //solution 9part1 in file name (SpaceshipFighter.dart)
  //9part2
  ShieldedShip defender = ShieldedShip();
  defender.name = "Defender";
  defender.weapon = "Cannon";
  defender.moveRight();
  print(defender.position);
  defender.fire();
  print(defender.remainingFirePower);

  //solution 10part1 in file name (SpaceshipFighter.dart)
  //10part2
  defender.wasHit();

  print(defender.shieldStrength);
  print(defender.health);

  //solution 11part1 in file name (SpaceshipFighter.dart)
  //11part2
  defender.wasHit();

  print(defender.shieldStrength);
  print(defender.health);


}
