import 'dart:io';

void main(List<String> args){
  Directory dir = Directory.systemTemp.createTempSync();

  /*print(dir.path);
  if(dir.existsSync()){
    print('Removing ${dir.path}');
    dir.deleteSync();
  } else {
      print('Could not find ${dir.path}');
  }*/

  print('---------------------');
  print('Listing times in directories');
  print('---------------------');

  Directory documents = Directory.current;
  print('Dir: ${documents.path}');

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((FileSystemEntity value) { 
    FileStat fs = value.statSync();
    print('Type: ${fs.type}');
    print('Changed: ${fs.changed}');
    print('Modified: ${fs.modified}');
    print('Accesed: ${fs.accessed}');
    print('Size: ${fs.size}');
  });

}