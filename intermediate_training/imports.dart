//import 'package:dart_training/imports1.dart' as mycode; //con import mandas llamar otra clase, con as 'alias' le asignas un alias
import 'dart:convert';
import 'lib/imports1.dart' as mycode;

main (List<String> args){
  mycode.sayHello();

  String myValue = "Hello world";
  List<int> ebytes = utf8.encode(myValue);
  String encoded = base64.encode(ebytes);

  print('Encoded: ${encoded}');

  List<int> dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);

  print('Decoded: ${decoded}');

}