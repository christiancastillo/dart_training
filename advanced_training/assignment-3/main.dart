import 'dart:io';
import 'dart:async';


// A future represents the result of an asynchronous operation
void main(List<String> args) async { //async words allows code to execute in the function
  print('Starting ...... \n\n');
  File file = await appendFile();

  print('Appended to: ${file.path} \n\n');

  print(await readFile()); //await espera el retorno del valor de un FUTURE
  print('********');

}

Future<File> appendFile(){
  File file = new File(Directory.current.path + '/ejemplo.txt');
  DateTime dt = new DateTime.now();

  return file.writeAsString(dt.toString() + '\r\n', mode: FileMode.append);
}

Future<String> readFile(){
  File file = new File(Directory.current.path + '/ejemplo.txt');
  return file.readAsString();
}