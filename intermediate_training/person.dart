/*

Create a person class that has an age getter but not a setter. 
This will allow the age to be read from the class but not changed. 
Set the age in the class constructor

*/

class Person{
  String name = 'Yamil';
  int _age = 0;

  Person(int age) {
    _age  = age;
  }

  int get age =>  _age; /*
    int get age(){ //es lo mismo
      return _age;
    }
  */
}

void main(List<String> args){
  Person yamil = new Person(30);  
  print('Yamil is ${yamil.age}');
}