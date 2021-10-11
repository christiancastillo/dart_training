main (List<String> args){
  sayHelloTraditional('Yamil');
  sayHelloTraditional(); //Parametro opcional
  sayHello('Arrow function');

  downloadFile('myFile.txt');
  downloadFile('myFile2.txt',true);

  
  //Optional named parameters {}

  //squareFeet(width: 10);
  //squareFeet(width: 10, length: 10);

  descargarArchivo('CV.doc', puerto:100); //Parametros nombrados opcionales, se pueden o no incluir todos los parametros opcionales al llamar al metodo
  descargarArchivo('CV.doc');

  int footage = squartFeet(length:10, width: 10);
  print('Footage is: ${footage}');
}

void sayHelloTraditional([String? name]){ //[Type variable] <- parametro opcional
//UPDATE: Si son parametros opcionales, entonces se tiene que agregar un nullsafe
  print('Hello ${name}! \n');
}

void sayHello(String name) => print('Hello ${name}'); //arrow Function

void downloadFile(String file, [bool openFile = false]){ //parametro opcional, con valor por default
  print('Downloading file ${file}... ');
  if(openFile) {
    print('Opening ${file}');
  }   
}

void descargarArchivo(String archivo, {int puerto: 80}){
  print('Descargando archivo ${archivo} del puerto ${puerto}');
}

int squartFeet({int? width, int? length}){
  return width! * length!;

}

/* int squareFeet({int? width, int? length}){

  int result = width!*length!;
  return result;
} */