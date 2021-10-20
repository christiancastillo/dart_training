import 'mammal.dart';
import 'multiple-inheritance/dragon.dart';

class Feline extends Mammal{
  bool hasClaws = true;
  void growl() => print('Growls');

  
  void test(){
    print('testing in feline');
    super.test(); //super is the class we inherit from
  }
}
