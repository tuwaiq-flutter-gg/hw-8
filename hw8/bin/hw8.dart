import 'package:hw8/hw8.dart' as hw8;

void main(List<String> arguments) {
  // vehicle vehicle1 = vehicle.defaultVehicle();
  // vehicle1;

  vehicle vehicle2 = vehicle("Bburago", "Red", "R & P", 2022); //testing #3
  vehicle vehicle3 = vehicle("Bburago", "Red", "R & P", 2022);
  vehicle3.customVehicle("P & P", "Blue"); //Testing #4
  print(vehicle2.color);

  //#6
  Fighter destroyer =
      Fighter(name: "Destroyer", remainingFirePower: 10, weapon: "Laser");
  print("Fighter ${destroyer.name} position: ${destroyer.position}");
  destroyer.moveRight(1);
  print("Fighter ${destroyer.name} position: ${destroyer.position}");

  //#7
  Spaceship falcon = Spaceship();
  //print(falcon.weapon);
  //falcon is an object to supper class (Spaceship), and 'weapon' is variable-
  //of subclass(Fighter).

  //#8
  print(
      "Fighter ${destroyer.name} remaining fire: ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "Fighter ${destroyer.name} remaining fire: ${destroyer.remainingFirePower}");
  destroyer.fire();
  print(
      "Fighter ${destroyer.name} remaining fire: ${destroyer.remainingFirePower}");
  destroyer.fire();

  //#9
  ShieldedShip defender = ShieldedShip(name: "Defender", weapon: "Cannon");
  defender.moveRight(1);
  print("Fighter ${defender.name} position: ${defender.position}");
  defender.fire();
  print(
      "Fighter ${defender.name} remaining fire: ${defender.remainingFirePower}");

  //#10
  print(
      "Fighter ${defender.name} remaining Shield: ${defender.shieldStrength}");
  print("Fighter ${defender.name} remaining health: ${defender.health}");
  print("=-=-=-=-=-==-=-=-=-=-=-=-=-=");
  defender.wasHit(true);
  print(
      "Fighter ${defender.name} remaining Shield: ${defender.shieldStrength}");
  print("Fighter ${defender.name} remaining health: ${defender.health}");
  //#11
  print("=-=-=-=-=-==-=-=-=-=-=-=-=-=");
  defender.shieldStrength = 0; //testing health hit
  print(
      "Fighter ${defender.name} remaining Shield: ${defender.shieldStrength}");
  print("Fighter ${defender.name} remaining health: ${defender.health}");
  defender.wasHit(true);
  print("=-=-=-=-=-==-=-=-=-=-=-=-=-=");
  print(
      "Fighter ${defender.name} remaining Shield: ${defender.shieldStrength}");
  print("Fighter ${defender.name} remaining health: ${defender.health}");
}

class vehicle {
  //#1
  String model;
  int yeaOfPrediction;
  String Company;
  String color;
  int speed = 0;
  moving(int Speed) {
    this.speed += Speed;
    print(speed);
  }

  stopping() {
    this.speed = 0;
    print("car stopped");
  }

  //#2
  // vehicle.defaultVehicle() {
  //   print("This is the default constructor");
  // }

  //#3
  vehicle(this.Company, this.color, this.model, this.yeaOfPrediction) {}

  //#4
  customVehicle(var model, var color) {
    this.model = model;
    this.color = color;
  }
}

class Spaceship {
  String? name = "";
  int health = 10;
  int? position = 0;
  Spaceship({this.name, this.position, health});
  moveLeft(int move) {
    this.position = this.position! - move;
  }

  moveRight(int move) {
    this.position = this.position! + move;
  }

  wasHit(bool hit) {
    if (hit = true) {
      health = health - 5;
    }
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

class Fighter extends Spaceship {
  //#5
  String? weapon = "";
  int remainingFirePower = 5;

  Fighter({
    this.weapon,
    remainingFirePower,
    super.name,
  }) {
    super.position = 0;
  }

  //#8
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower = remainingFirePower - 1;
    } else if (remainingFirePower <= 0) {
      print("You have no more fire power.");
    }
  }
}

class ShieldedShip extends Fighter {
  int? shieldStrength = 25; // you can change from 25 to 0, to test health hit

  ShieldedShip({super.name, super.weapon});

  //#10
  @override
  wasHit(bool hit) {
    if (shieldStrength! > 5) {
      shieldStrength = shieldStrength! - 5;
    } else {
      //health = health - 5;
      //#11
      super.wasHit(hit);
    }
  }
}
