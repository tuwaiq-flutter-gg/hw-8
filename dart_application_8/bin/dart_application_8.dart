import 'package:dart_application_8/dart_application_8.dart'
    as dart_application_8;

import 'fance.dart';

main() {
//2
  // Vehicle p1 = Vehicle(2, 44, "zara", "red");
  // print(p1.defaultVehicle());

//6
  Fighter destroyer = Fighter()
    ..weapon = "Laser"
    ..remainingFirePower = 10;

  print(destroyer.position);
  destroyer.name = "destroyer1";
  print(destroyer.name);
  destroyer.moveRight();
  print(destroyer.position);

  //7
  Spaceship falcon = Spaceship();
  //print(falcon.weapon);
  //It is not defined because the "weapon" is not defined best for the "spaceship" type.

  //8
  destroyer = destroyer.fire();
  destroyer = destroyer.fire();
  destroyer = destroyer.fire();
  print("remainingFirePower is ${destroyer.remainingFirePower}");

  //9
  ShieldedShip defender = ShieldedShip()
   ..name = "Defender"
    ..weapon = "Cannon";

  defender.moveRight();
  print(defender.position);

  defender.fire();
  print(defender.remainingFirePower);

  //10
  print(defender.health);

  print(defender.shieldStrength);
}

//1
class Vehicle {
  int? model;
  var yeaOfPrediction;
  var Company;
  String? color;

//3
  Vehicle(this.model, this.yeaOfPrediction, this.Company, this.color);

//4
  customVehicle(int? model , String color) {
  }

  defaultVehicle() {
    print("This is the default constructor");
  }

  VehicleIsEmpty({bool? vehicle}) {
    if (vehicle == true) {
      print("The cart is empty");
    }
  }

  printCompny() {
    print("company = $Company");
  }
}

//5
class Fighter extends Spaceship {
  String? weapon = "";
  int? remainingFirePower = 5;

//8
  fire() {
    if (remainingFirePower! > 0) {
      remainingFirePower = -1;
    } else {
      print("You have no more fire power.");
    }
  }
  }


class ShieldedShip extends Fighter {
  double? shieldStrength = 25;

//10
  @override
  wasHit() {
    if (shieldStrength! > 5) {
      shieldStrength = shieldStrength! - 5;
    } else {
      // health = health! - 5;
      //11
      super.wasHit();
    }
  }
}
