void TestNumber() {
  print("Test number in Dart");

  // declare variable by keyword var
  // Numeric number: integer and double
  // var a = 1;
  // var b = 2.1;
  int a = 1;
  double b = 2.1;
  print("integer number: " + a.toString());
  print("double number: " + b.toString());

  print("----------------------------------");
}

void TestString() {
  print("Test string in Dart");

  // String
  var str = 'Hello Dart';
  print(str);

  print("----------------------------------");
}

void TestBoolean() {
  print("Test boolean in Dart");

  bool b = false;
  print(b);

  print("----------------------------------");
}

void TestList() {
  print("Test list in Dart");

  // List
  var list = [1, 2, 3, 4, 5.0, 6.1, "Akagi"];
  // print(list);
  print("list: " + list.toString());

  print("----------------------------------");
}

void TestMap() {
  print("Test map in Dart");

  // Map
  var mapping = {'id': 1, 'name': 'Dart'};
  print(mapping);

  print("----------------------------------");
}

void TestDynamic() {
  print("Test dynamic in Dart");

  // If the variable type is not defined, then its default type is dynamic
  dynamic name = "Dart";
  print(name);

  print("----------------------------------");
}

void TestConstant() {
  print("Test constants in Dart");

  // The final and const keyword are used to declare constants
  final c = 12;
  const pi = 3.14;
  print(c);
  print(pi);

  print("----------------------------------");
}

void main(List<String> args) {
  TestNumber();
  TestString();
  TestBoolean();
  TestList();
  TestMap();  
  TestDynamic();  
  TestConstant();
}