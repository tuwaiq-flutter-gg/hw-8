main(){

var testvehi =Vehicle();

testvehi.model ="Explorer";
testvehi.yeaOFPrediction = 2023;
testvehi.company = "Ford";
testvehi.color =  "Red";
testvehi.position= 0;

 

}



class Vehicle{

String? model ;
int? yeaOFPrediction;
String? company;
String? color;
int? position;

// Vehicle (){
//   print("This is the default constructor");
// }

Vehicle (this.model,this.yeaOFPrediction,this.company,this.color,this.position);

customVehicle(String color){
this.color = color;

}

}

changeColorBrand (){
  
  print("${this.color} my brand color ");
}
comveCar(){

 ({this.position});


}



