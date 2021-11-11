import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'dart:math';
import 'package:collection/collection.dart';

main (List<String> args){
  //AES
  final key = randomBytes(16);
  final params = KeyParameter(key);

  BlockCipher cipher = BlockCipher("AES");
  cipher.init(true, params);

  String plainText  = 'Hello World!';

  //Encryption...

  Uint8List plain_data = createUint8ListFromString(plainText.padRight(cipher.blockSize)); // PAD - NOT 100% secure
  Uint8List encrypted_data = cipher.process(plain_data);

  //Decrypt

  cipher.reset();
  cipher.init(false,params);
  Uint8List decrypted_data = cipher.process(encrypted_data);


  display('Plain text: ', plain_data);
  display('Encrypted data: ',encrypted_data);
  display('Decrypted data: ', decrypted_data);

  Function eq = const ListEquality().equals;

  assert(eq(plain_data,encrypted_data));

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