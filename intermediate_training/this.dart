import 'scope3.dart';

class Dog{
  int age = 1;
  String name = 'fiddo';

  Dog(int age, String name){
    this.age = age;
    this.name = name;
  }
  int ageInDogYears() => age * 7;
}

void main(List<String> args) {
  Dog bob = new Dog(6, 'Bob');
  Animal yadra = new Animal('Yadra', 3, 'Belga');


  yadra.breed = 'AKITA';
  yadra.age = 10;
  yadra.name = 'MAX'; //se accede al setter
  print(yadra.name); //se accede al getter
  //yadra._age = 10;
  //Utilizando get y set
  yadra.sayHello();


  print('${bob.name} is ${bob.ageInDogYears()} dogs years old.');
}