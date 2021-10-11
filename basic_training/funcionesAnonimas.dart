//Funciones anonimas

main (List<String> args){
  (){print('Annonymous function!');};

  List <String> people = ['Chris', 'Ale', 'Dafne'];

  people.forEach(print);

  //Ejemplo de funcion anonima
  print('-------------');
  people.forEach((String name){
    print(name);
  });


  //Ejemplo mas complejo de funciones anonimas
  print('------------');
  people.where((String nombre){
    switch(nombre){
      case 'Dafne': 
        return true;
      case 'Ale':
        return true;
      case 'Christian':
        return false;
      case 'Chris':
        return true;
      default:
        return false;
    }
  }).forEach(print);
}