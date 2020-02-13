import 'mobile.dart';

void main(List<String> args) {
  print("--------Mobile 1 info--------");
  Mobile mobile1 = new Mobile(Color.BLACK, "Iphone 10");
  // mobile1.calling();
  // mobile1.musicPlaying();
  mobile1.display();
  print("-----------------------------");

  print("--------Mobile 2 info--------");
  Mobile mobile2 = new Mobile.color(Color.PINK);
  mobile2.display();
  print("-----------------------------");

  print("--------Mobile 3 info--------");
  Mobile mobile3 = new Mobile.brandName("Samsung Note 10");
  mobile3.display();
  print("-----------------------------");
}