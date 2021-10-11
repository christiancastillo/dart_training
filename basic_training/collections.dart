import 'dart:collection';
import 'dart:io';
//Enums

enum colors{ //Se tiene que declarar fuera del main
  red,
  green,
  blue
}
main(List<String> args){
  print(colors.values);
  print(colors.green);

  //Listas

  List test = [1,2,3,4];
  print('Test length: ${test.length}'); //How many elemnts
  print('First item is: ${test[0]}'); //Search by index
  print(test.elementAt(3));

  List things = [];
  things.add(1000);
  things.add("String object");
  things.add(1023.3);
  things.add(true);
  print(things);

  List <int> numbers = [];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  print(numbers);

  //Sets | conjuntos
  //Sets are unordered and do not contain duplicates
  Set<int> set = new Set<int>();
  set.add(100);
  set.add(1);
  set.add(2);
  set.add(3);
  set.add(4);
  set.add(4);
  print(set); //solo muestra valores que NO están repetidos

  //Queues

//Queues are ordered, no index; add and remove from start and end
  Queue<int> queue = new Queue<int>(); //se necesita importar de import 'dart:collection'
  Queue items = new Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  items.removeFirst();
  items.removeLast();
  print(items);

//Maps = key-value pair

//Forma 1 de declarar....
  /*Map people = {
    'papa' : 'Yamil',
    'mama' : 'Ale',
    'hija' : 'Dafne',
  };*/

  Map<String,String> people = new Map<String,String>();

  people.putIfAbsent('papa', () => 'Yamil'); //Funcion anonima
  people.putIfAbsent('mama', () => 'Ale'); //Funcion anonima
  people.putIfAbsent('hija', () => 'Dafne'); //Funcion anonima

  print(people);
  print('Keys are: ${people.keys}');
  print('Values are: ${people.values}');
  print('Dad is: ${people['dad']}'); //mapa[llave]
  print('Mommy is: ${people['mama']}');
  print('Daughter is: ${people['hija']}');

  //Create a list of people, ask the user for an index. Display the person in the list at the index the user supplied.


  List<String> PeopleList = [];
  PeopleList.add("Aleida");
  PeopleList.add("Yamil");
  PeopleList.add("Dafne");

  String? idx;
  stdout.writeln("Que indice desea cargar?");
  idx = stdin.readLineSync();
  stdout.writeln("Indice: ${PeopleList[int.parse(idx!)]}"); //Se agrega un null check para que se pueda hacer un parsing

}