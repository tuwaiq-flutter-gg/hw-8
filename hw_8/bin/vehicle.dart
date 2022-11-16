class Vehicle {
  int? model;
  String? car;
  String? Company;
  String? color;
  defaultVehicle() {
    print("This is the default constructor");
  }

  Vehicle({this.Company, this.color, this.model, this.car}) {}
  customVehicle() {
    print(car);
    print(Company);
  }

  Insurance(int? price) {
    if (price == null) {
      print(
          "your Insurance for your car ${car} ,color ${color} model ${model} company of car ${Company} is null");
    }
    print(
        "your Insurance for your car ${car} ,color ${color} model ${model} company of car ${Company} is ${price}");
  }

  Traffic_Violation(List<String?>? tyep_Violation) {
    print(
        "your Insurance for your car ${car} ,color ${color} model ${model} company of car ${Company} is ${tyep_Violation}");
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
class Spaceship {
  String? name;
  var health;
  var position;
  static const falcon = "Falcon";
  Spaceship({this.name, this.health, this.position});

  name_s() {
    print("name of Spaceship ${falcon}");
  }

  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  where_P() {
    if (position > 0) {
      print("right");
    } else if (position < 0) {
      print("left");
    } else if (position == 0) {
      print("is in center");
    }
  }

  wasHit() {
    health = -5;
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    } else {
      health = -5;
      print("your hit  ${health}");
    }
  }
}

class Fighter extends Spaceship {
  String? weapon;
  var remainingFirePower = 5;

  Fighter(
      {this.weapon = "Laser",
      this.remainingFirePower = 10,
      String? name,
      int? health = 0,
      int? position = 0})
      : super(name: name, health: health, position: position) {}
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower--;
      print("your power is ${remainingFirePower}");
    } else if (remainingFirePower < 0) {
      print("You have no more fire power.");
    }
  }
}

class ShieldedShip extends Fighter {
  var shieldStrength;
  String? defender;
  ShieldedShip() {
    this.defender = "Defender";
    this.shieldStrength = 25;
    this.weapon = "Cannon";
    this.remainingFirePower = 5;
    this.health = 25;
  }
  @override
  wasHit() {
    if (shieldStrength > 0) {
      shieldStrength -= 5;
      print("your shield now ${shieldStrength}");
    } else  {
      health -= 5;
      print("your health now ${health}");
   }//else if(shieldStrength>-100){
    //   health -= 5;
    //   print("your health now ${health}");
    // }if (remainingFirePower <= 0)
  }
}
