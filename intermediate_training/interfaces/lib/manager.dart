import 'employee.dart';

class Manager implements Employee {
  String name = 'Bob';

  //void test() => print('I am a manager.');

  void test() {
    print('test in the manager class.');
    print(super.toString()); //Retorna el toString de la clase que se hereda
  }

  //When implementing an interface, you have to build yourself everything
  //from the ground up.
}