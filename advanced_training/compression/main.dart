import 'dart:io';
import 'dart:convert';

void main(List<String> args){
  String data = '';
  for(int i = 0; i<100; i++){
    data = data + 'Hello WORLD!!';    
  }

  //datos originales
  List<int> original = utf8.encode(data);


  //compresión
  List<int> compressed = gzip.encode(original);

  //descomprimiendo...encode()

  List<int> decompressed = gzip.decode(compressed);

  print('Original: ${original.length} bytes');
  print('Compressed: ${compressed.length} bytes');
  print('Decompressed: ${decompressed.length} bytes');

  String decoded = utf8.decode(decompressed);
  assert(data == decoded);

  print('Decoded...: ${decoded}');
}