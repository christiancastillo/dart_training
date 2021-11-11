import 'dart:io';
import 'dart:async';

void main(List<String> args) async {

File file = await appendFile(); //se tiene que agregar la palabra await cuando se retornan Futures

print('Appended to file ${file.path}');

}

Future<File> appendFile(){
  File file = new File(Directory.current.path + '/test.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.append);
}