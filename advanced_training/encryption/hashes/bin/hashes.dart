import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  print('Hello world!');

  Digest digest = new Digest("SHA-256");
  String value = 'Hello Wolrd';

  Uint8List data =  new Uint8List.fromList(utf8.encode(value));
  Uint8List hash = digest.process(data);

  print('Hash: ${hash}');
  print(base64.encode(hash));
}
