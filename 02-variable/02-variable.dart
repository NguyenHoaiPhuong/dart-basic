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

void TestInitialValue() {
  print("Test initial value in Dart");

  // If we declare a variable without assigning a value to it,
  // as default, a null value will be attached to this variable.

  int num;
  print(num);

  double d;
  print(d);

  bool b;
  print(b);

  String str;
  print(str);

  List list;
  print(list);

  Map map;
  print(map);

  print("----------------------------------");
}

void TestDynamic() {
  print("Test dynamic in Dart");

  dynamic name = "Dart";
  print(name);

  name = 34;
  print(name);

  print("----------------------------------");
}

void TestConst() {
  print("Test const keyword in Dart");

  // The const keyword is used to represent a compile-time constant.
  // Variables declared using the const keyword are implicitly final.  
  const pi = 3.14;  
  const int radius = 12;
  const area = pi * radius * radius;

  print("Area of a circle with ${radius} is ${area}");

  print("----------------------------------");
}

void TestFinal() {
  print("Test final keyword in Dart");

  // The final keyword is used to represent a run-time constant.
  final pi = 3.14;

  print(pi);

  print("----------------------------------");
}

void main(List<String> args) {
  TestNumber();
  TestString();
  TestBoolean();
  TestList();
  TestMap();  
  TestInitialValue();
  TestDynamic();
  TestConst();
  TestFinal();
}

