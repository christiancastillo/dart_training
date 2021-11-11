import 'dart:io';

main (List<String> args) {
  print('Os: ${Platform.operatingSystem} ${Platform.version}');

  if (Platform.isWindows){
    print('Windows code goes here...');
  } else {
    print('Run normal code');
  }  

  print('Path: ${Platform.script.path}');
  print('Path: ${Platform.executable}');

  Platform.environment.keys.forEach((key) { 
    print('key: ${Platform.environment[key]}');
  });
}