import 'dart:async';

int counter = 0;
void main(List<String> args){
  Duration duration = new Duration(seconds: 2);
  Timer timer = new Timer.periodic(duration, (timeout) { });
  print('Started: ${getTime()}');
}

void timout(Timer timer){
  print('Timer: ${getTime()}');
  counter++;
  if (counter >= 5) timer.cancel();
}

String getTime(){
  DateTime dt = new DateTime.now();
  return dt.toString();
}