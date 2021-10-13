class Animal {
  String _name = ""; //This ia a private variable  
  
  
  Animal({String? nameOfAnimal}){
    print('Default constructor');
    _name = nameOfAnimal!;
  }  

  void SayHello() {
    if (_name.isEmpty){
      print('Hello!!');
    } else {
      print('Hello, ${_name}, it is nice to meet you.');
    }
  }
}