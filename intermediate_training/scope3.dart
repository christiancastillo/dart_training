class Animal{
  String _name = '';
  int _age = 0;
  String breed = ''; //modificador de acceso: _name quiere decir que es privado

  Animal(String name, int age, String breed){
    this._name = name;
    this._age = age;
    this.breed = breed;
  }


  void sayHello() => print('Hello, my name is: ${_name} I am ${_age} years old, and I am a ${breed}'); //se accede a las variables con _  


  //GETTERS AND SETTERS
  String get name => _name;
  void set name(String value) => _name=value;
  int get age => _age;
  void set age(int value) => _age = value;

}

void main(List<String> args){
  Animal perro = new Animal('Yadra', 3, 'Pastor Belga');

  perro.breed = 'Pastor Aleman';
  perro.sayHello();

}