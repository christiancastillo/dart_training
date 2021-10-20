main(List<String> arguments) {
  List<int> numbers = [];
  numbers.addAll([1,2,3,4]);
  print(numbers);

  List<String> strings = [];
  strings.addAll(['a','c','c']);
  print(strings);

  add<int>(1,2);
  add<double>(10.1, 1.5);
  add<String>('a','b');

  //Simple example with
  void add<T>(T a, T b){    
    print('${a+b}');
  }
}