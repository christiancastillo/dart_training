class Animal{
  static int _counter = 0;

  //solo usar static cuando esa variable se necesite a nivel global de la clase, que no se haga una nueva con cada instancia

  Animal(){
    _counter++;
    print('There are ${_counter} of us');

  }

  static void speak(){
    print('speaking');
    run();
  }
  static void run(){
    print('running');
  }
}

void main(List<String> args){
  Animal anim = new Animal();
  Animal dog  = new Animal();
  Animal fish = new Animal();

  Animal.run();

}