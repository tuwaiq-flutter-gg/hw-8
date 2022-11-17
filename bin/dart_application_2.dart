import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;

void main(List<String> args) {


   // 
   vehicle vehicle2 = vehicle(Company: "nissan" , color: "gray" , model: 2020 , yeaOfPrediction: 2020);


   // Q6
   Fighter destroyer = Fighter()
     ..weapon = "Laser" 
     ..remainingFirePower = 10 ;

   destroyer.name = "Destroyer" ;

   print(destroyer.position);

   destroyer.moveRight();

   print(destroyer.position);

   //Q 7
   Spaceship falcon = Spaceship();
   print(falcon.weapon);
 


   //Q8
   destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );
   destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );
   destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );

   // Q9
   ShieldedShip defender = ShieldedShip()
     ..name = "Defender"
     ..weapon = "Cannon";

   defender.moveRight();
   print("position : ${defender.position}");

   defender.fire();
   print("remainingFirePower : ${defender.remainingFirePower}");

   // Q10
   defender.wasHit();
   print("shieldStrength : ${defender.shieldStrength}");
   print("health : ${defender.health}");

   // Q11
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
       // 11
       super.wasHit();
     }
   }

 }