// ignore_for_file: unnecessary_this

void main() {
  Vehicle v1 = Vehicle.dfaultVehicle();
  v1.printInfo();
  Vehicle v2 = Vehicle("Camry", 2020, "Toyota", "Black");
  v2.printInfo();
  //v2.getColor();
  Vehicle v3 = Vehicle.customVehicle("Toyota", "Camry");
  v3.printInfo();
}

//Q1
class Vehicle {
  String? model;
  int? yearOfPrediction;
  String? Company;
  String? color;
  printInfo() {
    print(
        "The model is \"$model\"\t the Year of prodaction is \"$yearOfPrediction\"\the company is \"$Company\"\t the color is \"$color\"");
  }

  getColor() {
    if (color == null) {
      print("You did not specify a color for your Car");
    } else {
      print("The color of your car is $color");
    }
  }

  //Q2
  Vehicle.dfaultVehicle() {
    print("This is the default constructor");
  }
  //Q3
  Vehicle(this.model, this.yearOfPrediction, this.Company, this.color) {
    print("This constructor has 4 paramter");
  }
  //Q4
  Vehicle.customVehicle(this.Company, this.model) {
    print("This constructor has 2 paramter\t\t\"It works fine\"");
  }
}
