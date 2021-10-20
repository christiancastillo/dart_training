main (List<String> args){
  List values = [1,2,3,4];

  //print(add(10,values));

}

T add<T extends num>(T value, List<T> items){ //returns a T type
  T ret = value;
  items.forEach((value) {
    //ret = ret + value;
  });

  return ret;
}