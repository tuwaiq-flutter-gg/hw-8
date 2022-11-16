void main(List<String> arguments) {
//6
  Fighter destroyer = Fighter();
  destroyer.weapon = "Laser ";
  destroyer.position = 0;
  destroyer.remainingFirePower = 5;
  print(destroyer.position);
  destroyer.moveRight();
  print(destroyer.position);
  print(destroyer.remainingFirePower);
  destroyer.fire(remainingFirePower: 20);
  print(destroyer.remainingFirePower);

//9 //10
  var defender = ShieldedShip(name: "Defender", wepone: "Cannon");
  defender.wasHit();
  print(defender.shieldStrength);
  print(defender.health);

  defender.moveRight();
  print(defender.position);
  defender.fire();
  print(defender.remainingFirePower);

//7
  /*Spaceship falcon = Spaceship(weapon:);  father can't inhearet his chiled .*/

  //3
  Vehicle vehicle = Vehicle(
      Company: "toyta", color: "white", model: "camry", yeaOfPrediction: 2010);

//2
  // Vehicle defaultVehicle = Vehicle(color: "white", model: "camry", yeaOfPrediction: 2010);
  // print(vehicle);
  print(
    vehicle.Company,
  );
//4
  var customVehicle = Vehicle(
      Company: "minicoper",
      color: "pink",
      model: "minicoper",
      yeaOfPrediction: 2023);

  print(customVehicle.customVehicle());
}

//1
class Vehicle {
  String? model;

  int? yeaOfPrediction;

  String? Company;

  String? color;
  Vehicle({this.Company, this.color, this.model, this.yeaOfPrediction}) {
    return;
  }
  getMdel() {
    print(" ${model} ");
  }

  getColor() {
    print("$color");
  }

  customVehicle() {
    print(
        "costom is color: ${color} form ${Company} and its model ${model} brah new ${yeaOfPrediction} ");
  }
}

class Spaceship {
  String? name = "";
  int? position = 0;
  int? health = 0;
//2
  static const falcon = "falcon ";
  Spaceship({this.name, this.health, this.position});
// 3
  moveLeft() {
    position = 2;
  }

  moveRight() {
    position = 1;
  }

  movement() {
    if (position == 0) {
      print("center ");
    } else if (position == 1) {
      print("right");
    } else {
      print("left");
    }
  }
  //4

  wasHit() {
    health = 100;
    if (health == 0) {
      print(
          "Sorry, your ship was hit one too many times Do you want to play again?");
    } else {
      health = -5;
      print("your hit  $health}");
    }
  }

//8
  fire({int? remainingFirePower}) {
    if (remainingFirePower! > 0) {
      remainingFirePower--;
      print("fire power is $remainingFirePower ");
      return remainingFirePower;
    } else {
      print("You have no more fire power.");
    }
  }
}

class Fighter extends Spaceship {
  String? weapon;
  int? remainingFirePower;

  Fighter(
      {this.remainingFirePower,
      this.weapon,
      String? name,
      int? position,
      int? health})
      : super(name: name, health: health, position: position);
}

class ShieldedShip extends Fighter {
  int? shieldStrength;

  ShieldedShip(
      {this.shieldStrength,
      String? name,
      int? position,
      int? health,
      String? wepone})
      : super(name: name, position: position, health: health, weapon: wepone);

  @override
  wasHit() {
    if (shieldStrength! > 0) {
      shieldStrength! - 5;
    } else {
      // health! - 5;
      //11
      super.wasHit(); 
    }
    return shieldStrength;
  }
}
