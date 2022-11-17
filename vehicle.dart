main(){
vehicle vehicle1= vehicle.defaultvehicle();//2
vehicle1.PrintInfo();
vehicle1.vehicleColor();
//___________________3__________________
vehicle vehicle2= vehicle(model:"camry",yeaOfPrediction: 2022, Company:"Toyota",color:"black");
vehicle2.PrintInfo();
vehicle2.vehicleColor();
//___________________4__________________
vehicle vehicle3= vehicle.customVehicle(model: "gs3",yeaOfPrediction: 2022);
vehicle3.PrintInfo();
vehicle3.vehicleColor();
//the color and company te result is null becouse did't assign vlue is the constrant 


}
//___________________1__________________
//Create a class named vehicle with four variable properties: model, yeaOfPrediction, Company and color.
// Add at least two methods to this class from your own choose.
class vehicle {
String? model;
int? yeaOfPrediction;
String? Company;
String? color;
PrintInfo(){
  print("The model of vehicle is ${model}, the yeaOfPrediction is ${yeaOfPrediction}, of company ${Company} and the color is ${color} ");
}

vehicleColor(){
  print("the color of vehicle is ${color}");
}
//___________________2__________________
vehicle.defaultvehicle(){
  print("This is the default constructor");
}
//___________________3__________________
vehicle({this.Company,this.color,this.model,this.yeaOfPrediction}){
  print("create constractor");
}

//___________________4__________________
vehicle.customVehicle({String? model, int? yeaOfPrediction}){
print("they take 2 parameter");
}

}