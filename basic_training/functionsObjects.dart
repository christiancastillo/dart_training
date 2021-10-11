//Functions as Objects

main(List<String> args) {
    int age = 34;
    var dogYears = calcYears;
    var catYears = calcYears;

      print('Your age in dog years is: ${dogYears(age: 30, multiplier: 7)}'); //
      print('Your age in cat years is: ${catYears(age: age, multiplier: 12)}'); //
}

int calcYears({int? age, int? multiplier}){
  return age! * multiplier!;
}