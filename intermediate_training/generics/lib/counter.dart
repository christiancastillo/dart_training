class Counter<T extends num>{
  List<T> _items= [];

  void addAll(Iterable<T> iterable){
    _items.addAll(iterable);
  }

  void add(T value) => _items.add(value);

  T elementAt(int idx) => _items.elementAt(idx);

  void total(){
    num value = 0;
    _items.forEach((item){
      value+=item; //value = value + item
    });

    print(value);
  }  

}