//Error: Falla del programa
//Exception: Algo que se puede controlar
main (List<String> args){

  /*int age;
  int dogYears = 7;

  print(age*dogYears);*/

  try {
    int? age;
    int dogYears = 7;

    if (dogYears != 7) throw new Exception('dog years must be 7');
    if (age == null) throw new NullThrownError();

    print(age*dogYears);
  } on NullThrownError {
    print('The value was null!!');
  } on NoSuchMethodError {
    print('Sorry no such method');
  } catch(e){
    print('There was an error: ${e.toString()}');
  }   
  finally {
    print('Complete');
  }
 //null-aware operation: !
}