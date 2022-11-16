
//1
 class Vehicle{
  String? model;
  int? yeaOfPrediction;
  String? company ;
  String? color;
 
 vehicleModel(){
  print("VehicleModel: ${model}");
 }
 vehicleColor(){
  print("VehicleColor: ${color}");
 }

//2.default constructor
//  Vehicle.defaultVehicle(){
//   print("This is the default constructor");
//  }
 
 //3.parameterized constructor
 Vehicle({this.model, this.color, this.company, this.yeaOfPrediction});

//4.custom constructor
 Vehicle.customVehicle({this.model, this.company});


 }
