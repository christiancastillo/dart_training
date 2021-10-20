import 'car.dart';

class RaceCar extends Car { //EXTENDS para clases abstractas
  
  RaceCar() {
    this.hasWheels = true;
  }

  //void honk () => print('beep beep.');  
  void honk(){
    print('Honk in raceCar');
    super.honk();
  }
}