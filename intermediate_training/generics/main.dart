import 'lib/counter.dart';
main(List<String> arguments) {
  List<int> numbers = [];
  numbers.addAll([1,2,3,4]);
  print(numbers);

  List<String> strings = [];
  strings.addAll(['a','c','c']);
  print(strings);

  // add<int>(1,2);
  // add<double>(10.1, 1.5);
  // add<String>('a','b');

  //Simple example with
  @override
  void add<T>(T a, T b){    
    //print(a+b);
  }

  add<int>(1,2);

  //more complex
  void addNumbers<T extends num>(T a, T b){ //el tipo T incluye la clase num
    print(a+b);
  }

    addNumbers<int>(1,2);
    addNumbers<double>(10.4, 1.5);
    //addNumbers<String>('A', 'B');

    Counter<double> doubles = new Counter<double>();
    doubles.addAll([1.1,1.2,1.3]);
    doubles.total();

    Counter<int> integers = new Counter<int>();
    integers.addAll([1,2,3,4,5]);
    integers.total();
}