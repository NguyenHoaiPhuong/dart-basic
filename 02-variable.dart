void main(List<String> args) {
  // declare variable by keyword var
  // Numeric number: integer and double
  var a = 1;
  var b = 2.1;
  print(a);
  print(b);

  // String
  var str = 'Hello Dart';
  print(str);

  // List
  var list = [1, 2, 3, 4, 5.0, 6.1, "Akagi"];
  print(list);

  // Map
  var mapping = {'id': 1, 'name': 'Dart'};
  print(mapping);

  // If the variable type is not defined, then its default type is dynamic
  dynamic name = "Dart";
  print(name);

  // The final and const keyword are used to declare constants
  final c = 12;
  const pi = 3.14;
  print(c);
  print(pi);
}