import 'singleton.dart';

void main(List<String> args) {
  var s1 = Singleton();
  s1.status = "single";
  
  var s2 = Singleton();
  s2.status = "multiple";

  print(s1 == s2);
  print(s1.status);
  print(s2.status);
}