import 'dart:io';
import 'dart:async';

void main(List<String> args){
  String path = Directory.current.path + '/test.txt';
  print('Appending to ${path}');

  File file = new File(path);

  Future<RandomAccessFile> foo = file.open(mode: FileMode.append);
  foo.then((RandomAccessFile raf){
    print('File has been opened!');
    raf.writeString('Hello World').then((values) {
      print('File has been appended');
    //}).catchError(() => print('An error occured').whenComplete(() => raf.close());
    }).catchError(() => print('An error occured')).whenComplete(() => raf.close());
  });

  print('********* THE END');
}