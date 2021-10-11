main(List<String> args){
  print('Starting');
  int age = 9;
  assert(age == 43); //determina si algo es verdad
  //En caso de que no se cumpla la condicion entonces tirará una excepcion
  print('Finish!');

  // IF

  if (age == 43) {
    print("You're 43 years old");
  }

  if (age < 18) {
    print('You are not an adult!');
    if (age < 13) {
      print('You are not a teenager');
    }
  }

  //SWITCH

  switch(age){
    case 18:
      print('You are 18, you can vote.');
      break;
    case 21:
      print('You are 21, you are an adult.');
      break;
    case 65:
      print('You are 65, you can retire.');
      break;
    default:
      print('Nothing special about this age.');
      break;
  }
  print('Finished!');

  //DO WHILE

  print('DO WHILE LOOP');
  int value;
  int init = 1;
  int max = 5;

  value = init;

  do{ //runs the first block first
    print(value);
    value++;
  }while(value < max);

  init = value;

  //while

  while(value <= max){ //first evaluates and then runs the block
    print(value);
    value++;
  }

  print('Done with DO WHILE LOOP');

  //infinite loop

  print('Infinite Loop...');
  value = 0;

  do {
    print('Value: ${value}');
    value++;

    if (value == 3) {
      print('Value is 3 now.');
      continue; //sale del if y continua
    }

    if (value > 5){
      print('Value is greater than 5 now.');
      break; //interrumpe el ciclo
    }

  } while(true);


  //FOR LOOP

  List<String> people = ['Yamil', 'Aleida', 'Dafne'];


  print(people);

  for(int i = 0; i < people.length; i++){
    print('Person at ${i} is ${people[i]}');
  }


  // FOR EACH Loop

  people.forEach((String person) {
    print(person);
    }); //Se tiene que definir el tipo de dato del list

}