import 'person.dart';

void main(List<String> args) {
  var akagi = Person(1, "Akagi");
  print(akagi);

  var yushin = Person(2, "Yushin");
  print(yushin);

  print(Person.getPerson(1));
  print(Person.getPerson(2));
  print(Person.getPerson(3));
}