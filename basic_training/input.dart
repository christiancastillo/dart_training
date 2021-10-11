import 'dart:io';
import 'dart:async';

main (List<String> args){
  String? age;  
  stdout.write("Please input your age \r\n");
  age = stdin.readLineSync();
  stdout.writeln('Your age is: ${age}');
  age!.isEmpty ? stderr.write('Age is empty') : stdout.writeln('Your age is ${age}'); //se usa el ! para
  stdout.writeln("Where are you from? ");
  String? location = stdin.readLineSync();
  stdout.writeln('You\'re from: ${location}');

  // Manejo de errores (basico)



}