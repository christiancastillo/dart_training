import 'dart:io';

main(List<String> args){
    //List all files in a directory - Linux specific
  Process.run('notepad', ['C:\windows\System32\notepad.exe']).then((ProcessResult results) { //notepad C:\windows\System32\notepad.exe
    print(results.stdout);
    print('Exit code: ${results.exitCode}'); // 0 is good
  });
}