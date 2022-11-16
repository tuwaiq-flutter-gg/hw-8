main(){
// vehicle v= vehicle.defaultVehicle();
Spaceship falcon= Spaceship(name: "falcon");

vehicle v= vehicle(model: "x1",yeaOfPrediction: 1990,color: "black",Company: "TY");

print(v.getCompany());
print(v.getModel());

print("we can not call a constructer, it should be used to declare an object, step4");


print("spaceship");

Fighter destroyer=Fighter(remainingFirePower: 10,name: "Destroyer",weapon: "Laser");
print(destroyer.position);
destroyer.moveRight(num: 1);
print(destroyer.position);

// print(falcon.weapon);
print("we can not print weapon of Falcon because the variable weapon is declared on the subclass Fighter not the superclass which is Spaceship ");


for(var i=0;i<11;i++){
print(destroyer.remainingFirePower);
destroyer.fire();
}

ShieldedShip defender=ShieldedShip(name: "Defender",weapon: "cannon");
defender.moveRight(num: 1);
print(defender.position);
defender.fire();
print(defender.remainingFirePower);
defender.wasHit();
print("health :${defender.health}  sheild: ${defender.shieldStrength}");

}


class vehicle{

String? model,Company,color;
int? yeaOfPrediction; 


// vehicle.defaultVehicle(){
//   print("This is the default constructor");
// }


vehicle({this.model,this.Company,this.color,this.yeaOfPrediction}){}

vehicle.customVehicle({this.model,this.Company}){}

getModel(){
  return model;
}

getCompany(){

  return Company;
}


}


//

// Spaceship app

class Spaceship{

  String? name="";
  int? health=0,position=0;

  Spaceship({this.name, });

  moveRight({int? num}){

    this.position=this.position!+num!;

  }

 moveLeft({int? num}){
    this.position=(this.position!-num!);

  }

wasHit(){


  this.health=this.health!-5;

  if(this.health!<=0){
    
    print("Sorry, your ship was hit one too many times. Do you want to play again?");
    
    }

}


}

class Fighter extends Spaceship{

  String? weapon="";
  int? remainingFirePower=5;


Fighter({this.remainingFirePower,this.weapon,super.name}){
  if(this.remainingFirePower==null){
    this.remainingFirePower=5;

  }
}



fire(){
 if(this.remainingFirePower!>0){

   this.remainingFirePower=this.remainingFirePower!-1;

 } 
 else{
   print("You have no more fire power.");
 }
}

}


class ShieldedShip extends Fighter{


int? shieldStrength=25;

ShieldedShip({super.name,super.weapon});

@override
  wasHit() {
   if(this.shieldStrength!>0){
     shieldStrength=shieldStrength!-5;
   }else{
    //  this.health=this.health!-5;
    super.wasHit();
   }

  }
}