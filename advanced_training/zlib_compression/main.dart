import 'dart:io';
import 'dart:convert';

main(List<String> args){
  int zLib = testCompressor(zlib);
  int gZip = testCompressor(gzip);

  print('zlib = ${zlib}');
  print('gzip = ${gzip}');

} 


String generateData(){
  String data = '';

  for(int i = 0; i<100; i++){
    data = data + 'Hello world \n\n';
  }

  return data;
}

int testCompressor(var codec) {
  String data = generateData();

  List<int> original = utf8.encode(data);
  List<int> compressed = codec.encode(original);
  List<int> decompressed = codec.decode(compressed);

  print('Testing: ${codec.toString()}');
  print('Original ${original.length} bytes uncompressed');
  print('Compressed ${compressed.length} bytes compressed');
  print('Decompressed ${decompressed.length} bytes');

  String decoded = utf8.decode(decompressed);
  assert(data == decoded);

  return compressed.length;
}