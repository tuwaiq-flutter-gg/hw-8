main(){
vehicle test=vehicle();
//test.defaultVehicle();
vehicle test2=vehicle(company: "bmw",color: "black",yeaOfPrediction: 2019 ,model: 2023);
print(test2);
print(test2.color);

}

//1.Create a class named vehicle with four variable properties: model, yeaOfPrediction, Company and color. Add at least two methods to this class from your own choose.

class vehicle{
 int? model;
 int?yeaOfPrediction;
 String?Company;
 String?color;

 vehicleInfo(){
  print("this vehicle $model with color $color made in $yeaOfPrediction ,the company is$Company");
 }

 numofdoor(){
  print("the car have 4 door");
 }

//  defaultVehicle({int?model,int?yeaOfPrediction,String ?company , String? color}){
//   print("This is the default constructor");
//  }

 vehicle({int?model,int?yeaOfPrediction,String ?company , String? color}){
  print("this vehicle $model with color $color made in $yeaOfPrediction ,the company is$Company");

 }
 customVehicle({ int? model , int? yeaOfPrediction}){

  }
}