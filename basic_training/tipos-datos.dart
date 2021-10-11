main(List<String> args){
  bool? isOn; //tipo de dato que es seguro ponerlo con valor NULL
  bool isDog = true;

  print(isOn.toString());
  print(isDog);
  print('isOn = ${isOn}'); //otra forma de imprimir una variable, con comillas simples
  print('isDog is a ${isDog.runtimeType}');

  //NUMBERS
  num age = 32;
  int people = 0;
  double temperature = 0.0;

  //Parse an Int
  int txt = int.parse('0'); //de string a int
  print(txt);

  var err = int.tryParse('12.09');
  if (err == null){
    print('Could not parse err variable');
  }


  //MATH 

  int dogYears = 7;
  int dogAge = age.toInt() * dogYears; //no se puede multiplicar un num * int, se tiene que hacer casting
  print('your age in dog years is: ${dogAge}');

  //STRINGs

  String hello = 'hello world';
  print(hello);
  String nombre = 'Christian Castillo';
  print('Hello ${nombre}');
  String primerNombre = nombre.substring(0,6);

  //PUT THE INDEX OF A STRING
  int index = nombre.indexOf(' ');
  String lastname = nombre.substring(index).trim();
  print('last name: ${lastname}');

  //Longitud...

  print(nombre.length); //imprime el total de caracteres
  print(nombre.contains('#')); //Busca dentro de un string un caracter especificado

  //creates a list

  List parts = nombre.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);  

  //Definicion de variables constantes

  const String constantName = 'yamil';
  print(hello+' '+constantName);

}