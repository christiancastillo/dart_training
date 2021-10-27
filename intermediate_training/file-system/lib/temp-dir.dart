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

  
    print('-------------------- ARCHIVOS');

    Directory dir2 = Directory.current;
    print(dir2.path);

    File file2 = new File(dir2.path + '\\myFile.txt');
    writeFile(file2);
    readFile(file2);

  //----------------------WRITING IN FILES
}


  void writeFile(File archivo){
    //append, write

    RandomAccessFile raf = archivo.openSync(mode:FileMode.append);
    raf.writeStringSync('Hello world \r\n BLA BLA BLA');
    raf.flushSync();
    raf.closeSync();
  }

  void readFile(File archivo){
    if (archivo.existsSync()){
      print('Archivo no encontrado');
      return;
    } 

    print('Leyendo String....');

    archivo.readAsStringSync();
    print('-----------------');

    print('Leyendo bytes...');
    archivo.readAsBytesSync();
    List values = archivo.readAsBytesSync();
    values.forEach((value) {
      print(value);
     });
     archivo.delete();
  }