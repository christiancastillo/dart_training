import 'dart:io';

void main(List<String> args){
  String path = '/';

  Directory dir = new Directory(path);
  if(dir.existsSync()){ //It will happen one at a time
    print('Exists');
  } else {
    print('Not found');
  }

  print('-------------\n');
  dir.existsSync()?print('Exists'):print('Does not exist');
  print('---------------');
}