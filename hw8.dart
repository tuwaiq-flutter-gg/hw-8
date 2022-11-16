import 'package:hw8/hw8.dart' as hw8;
import 'dart:io';

 main() {

  //....3.....
  vehicl vehicle2 = vehicl(company: "Bentley",color: "whait",model: 2023);


//.............
print(vehicle2.company);
print(vehicle2.color);
//........6......
   Fighter destroyer = Fighter()
     ..weapon = "Laser" 
     ..remainingFirePower = 10 ;

   destroyer.name = "Destroyer" ;

   print(destroyer.position);

   destroyer.moveRight();

   print(destroyer.position);
   //.......7......
      Spaceship falcon = Spaceship();
   // print(falcon.weapon);
   // لان الكلاس الاساسي هو الاب والاب فقط من يورث الابن العمليه لا يمكن ان تكون بالعكس
   //........8......
      destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );
   destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );
   destroyer.fire();
   print("remainingFirePower : ${destroyer.remainingFirePower}" );
   //.........9........
        ShieldedShip defender = ShieldedShip()
     ..name = "Defender"
     ..weapon = "Cannon";

   defender.moveRight();
   print("position : ${defender.position}");

   defender.fire();
   print("remainingFirePower : ${defender.remainingFirePower}");
   //.......11......
      defender.wasHit();
   print("shieldStrength : ${defender.shieldStrength}");
   print("health : ${defender.health}");
   










}
//.......1.........
class vehicl{
 String ?company;
 int?model;
 String?color;
 //.....3/////////
 vehicl({this.company,this.color,this.model});
 smalcar(){
  }
sportCar(){
}
//...........4................
customVehicle({ int? model , int? yeaOfPrediction}){

   }




}

//......2........

//لايمكن انشاء الكونستركت باسم مختلف حيث اسم الكونستركت يكون باسم الكلاس


//.....5....................

class Spaceship{
 String?name;
 num health=0;
 int position =0;

moveLeft(){

  position --;}
moveRight(){

  position ++;}
wasHit(){
health -= 5;
 if (health <= 0){
 print("Sorry. Your ship was hit one too many times. Do you want to play again?");
}}}
 class Fighter extends Spaceship {
   String? weapon = "" ;
   num? remainingFirePower = 5 ;
//......8..............
   fire(){
     if(remainingFirePower! > 0 ){
       remainingFirePower = remainingFirePower! - 1 ;
     } else {
       print("You have no more fire power.");
     }}}
 //.....9.........
  class ShieldedShip extends Fighter {
   var shieldStrength = 25 ;}
   //......10.......
      
       // health = health - 5;
       // print(health);
       // return health;
       @override
   wasHit() {
     var shieldStrength;
     if (shieldStrength > 0) {
       shieldStrength -= 5;
     } else {
       //......11......
       // super.wasHit();
    
     return wasHit();
   }
   }
   //////////////////
 

     


    



