

void main(List<String> args) {
  
  // 2
  // this code will not compile because the default constrctor should be same name as the class name
  // vehicle vehicle1 = defaultVehicle(); 

  // 3
  vehicle vehicle2 = vehicle(Company: "tesla" , color: "red" , model: 2022 , yeaOfPrediction: 2022);

  // 4
  // the constrctor name cannot be costmized , but instead you can add any code you want in the main
  // vehicle vehicle3 = customVehicle(model: 2022 , yeaOfPrediction: 2022);

  // 6
  Fighter destroyer = Fighter()
    ..weapon = "Laser" 
    ..remainingFirePower = 10 ;
  
  destroyer.name = "Destroyer" ;

  print(destroyer.position);

  destroyer.moveRight();

  print(destroyer.position);

  // 7
  Spaceship falcon = Spaceship();
  // print(falcon.weapon);
  // the above statment will not work because the weapon is not belong to the falcon class 


  // 8
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );

  // 9
  ShieldedShip defender = ShieldedShip()
    ..name = "Defender"
    ..weapon = "Cannon";

  defender.moveRight();
  print("position : ${defender.position}");

  defender.fire();
  print("remainingFirePower : ${defender.remainingFirePower}");

  // 10
  defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health : ${defender.health}");

  // 11
  defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health : ${defender.health}");

}

// 1
class vehicle {
  int? model ;
  int? yeaOfPrediction ;
  String? Company ;
  String? color ;

  // 3
  vehicle({this.model , this.Company , this.color , this.yeaOfPrediction});

  // 4
  customVehicle({ int? model , int? yeaOfPrediction}){

  }

  // 2
  defaultVehicle(){
    print("This is the default constructor");
  }

  printColor(){
    print("the vehicle color is ${color}");
  }

  printCompany(){
    print("the vehicle company is ${Company}");
  }
}

class Spaceship {
  String? name = "" ;
  num? health = 0 ;
  int? position = 0 ;

  moveLeft(){
    position = position! + 1 ;
    print("moved left");
  }

  moveRight(){
    position = position! - 1 ;
    print("moved right");
  }

  wasHit(){
    health = health! - 5 ;
    if ( health! <= 0 ) {
      print("Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

// 5
class Fighter extends Spaceship {
  String? weapon = "" ;
  num? remainingFirePower = 5 ;

  fire(){
    if(remainingFirePower! > 0 ){
      remainingFirePower = remainingFirePower! - 1 ;
    } else {
      print("You have no more fire power.");
    }
  }

}


// 9
class ShieldedShip extends Fighter {
  int? shieldStrength = 25 ;

  // 10
  @override
  wasHit(){
    if(shieldStrength! > 0){
      shieldStrength = shieldStrength! - 5 ;
    } else {
      // health = health! - 5 ;
      // 11
      super.wasHit();
    }
  }
  
}