void main(List<String> arguments) {
  // vehicle v = vehicle.defaultVehicle();
  vehicle v = vehicle.customVehicle(color: "blue", model: 2022);
  // now, the value of v.color = blue and v.model = 2022, the rest of the attributes have null values.

  String falcon = "falcon";
  Spaceship spaceship1 = Spaceship(name: falcon, health: 100, position: 0);

  spaceship1.moveLeft();
  spaceship1.moveLeft();
  spaceship1.moveRight();
  print(spaceship1.position);
  print(spaceship1.health);
  spaceship1.wasHit();
  print(spaceship1.health);

  Fighter destroyer = Fighter(
      weapon: "Laser",
      remainingFirePower: 10,
      name: "destoryer1",
      health: 100,
      position: 0);

  // task:7
  // print(spaceship1.weapon); dose not work because Spaceship is the super class and it dose not have weapon property.

  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);

  ShieldedShip defender = ShieldedShip(
    name: "defender",
    weapon: "Cannon",
  );
  defender.moveLeft();
  print(defender.position);
  defender.fire();
  print(defender.remainingFirePower);

  defender.wasHit();
  print(defender.shieldStrength);
  print(defender.health);
}

// task:1
class vehicle {
  var model, yeaOfPrediction, Company, color;

  // task:2
  // vehicle.defaultVehicle() {
  //   print("This is the default constructor");
  // }
  vehicle({this.model, this.yeaOfPrediction, this.Company, this.color});
  vehicle.customVehicle({this.model, this.color});

  get getModel => model;
  get getColor => color;
}

// The following exercises are based on the spaceship app from yesterday's assignment.
class Spaceship {
  String name = "";
  int health = 100, position = 0;

  Spaceship({this.name = "", this.health = 0, this.position = 0});

  // task:3
  void moveLeft() => position--;
  void moveRight() => position++;
  // task:4
  void wasHit() => health <= 0
      ? print(
          "Sorry, your ship was hit one too many times. Do you want to play again?")
      : health -= 5;
}

// task:5
class Fighter extends Spaceship {
  String weapon;
  int remainingFirePower;
  Fighter(
      {this.weapon = "",
      this.remainingFirePower = 5,
      name = "",
      health = 100,
      position = 0})
      : super(name: name, health: health, position: position);

  // task:8
  void fire() => remainingFirePower > 0
      ? remainingFirePower--
      : print("You have no more fire power.");
}

// task:9
class ShieldedShip extends Fighter {
  var shieldStrength = 25;
  ShieldedShip(
      {this.shieldStrength = 25,
      weapon = "",
      remainingFirePower = 10,
      name = "",
      health = 100,
      position = 0})
      : super(
            weapon: weapon,
            remainingFirePower: remainingFirePower,
            name: name,
            health: health,
            position: position);

  // task:10 - 11
  @override
  void wasHit() => shieldStrength > 0 ? shieldStrength -= 5 : super.wasHit();
}
