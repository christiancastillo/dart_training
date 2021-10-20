import 'house.dart';
import 'hotel.dart';

class BedAndBreakfast extends House with Hotel{

  BedAndBreakfast() {
    guests = 0;
    rooms = 2;
  }

  void ringDoorBell() => print('Ring from Bnb');


}