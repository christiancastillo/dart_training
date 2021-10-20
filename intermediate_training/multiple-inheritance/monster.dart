import '../feline.dart';
import 'dragon.dart';
import 'ghost.dart';

class Monster extends Feline with Dragon, Ghost{ //con la palabra with, se incluyen otras clases
  
  void test() {
    print('Testing in Monster class');
    super.test();
  }


  void fly(){
    print('Monster can fly!');
    super.fly();
  }
}