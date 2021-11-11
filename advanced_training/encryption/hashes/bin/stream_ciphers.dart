import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'dart:math';
import 'package:collection/collection.dart';

main (List<String> args){
  final keybytes = randomBytes(16);
  final key = new KeyParameter(keybytes);
  final iv =  randomBytes(8);
  final params = new ParametersWithIV(key, iv);

  StreamCipher cipher = new StreamCipher('Salsa20');
  cipher.init(true, params);


  //Encrypting data
  String plainText = 'Hello world';
  Uint8List plain_data = createUint8ListFromString(plainText);
  Uint8List encryptedData = cipher.process(plain_data);


  //Decrypting data
  cipher.reset();
  cipher.init(false,params);
  Uint8List decrypted_data = cipher.process(encryptedData);


  display('Plain text: ', plain_data);
  display('Encrypted data: ', encryptedData);
  display('Decrypted data: ', decrypted_data);

  Function eq = const ListEquality().equals;
  assert(eq(plain_data, encryptedData));
}

Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(utf8.encode(value));

void display(String title, Uint8List value){
  print(title);
  print(value);
  print(base64.encode(value));
  print('');
}


Uint8List randomBytes(int length){
  final rnd = new SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);

  var random = new Random();
  for (int i = 0; i<random.nextInt(255);i++){
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}