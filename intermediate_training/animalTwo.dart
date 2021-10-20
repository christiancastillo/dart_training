//Lexical scope

class Animal{
String name = '';

  Animal(String name){
    String name = 'hello';
    this.name = name;
    print(name);
  }
}

void main(List<String> args){
  Animal perro = new Animal('perro');  
  for(int i = 0; i < 10; i++){
    print(i);
    if (i < 8){ 
      //int i = 5; //valid but causes issues
      if (i > 4){
        print('i is <0 and >4');
      }
    }

  }
}