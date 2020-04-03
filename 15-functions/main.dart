import 'dart:io';
import 'arithmetic.dart';
import 'person.dart';

int readInput() {
  print("Input an integer number:");
  var rawString = stdin.readLineSync();
  int input = int.parse(rawString);
  return input;
}

void printMsg(String msg) => print(msg);

TestPositionalParameter() {
  var a = readInput();
  var b = readInput();
  var c = readInput();
  var d = readInput();

  add(a, b);
  add(a, b, c);
  add(a, b, c, d);
}

TestNamedParameter() {
  var a = readInput();
  var b = readInput();
  var c = readInput();
  var d = readInput();

  multiply(a, b);
  multiply(a, b, c: c);
  multiply(a, b, d: d);
  multiply(a, b, c: c, d: d);
}

TestParamWithDefaultValue() {
  var a = readInput();
  var b = readInput();
  var c = readInput();

  addThenMultiply(a, b);
  addThenMultiply(a, b, c);

  addThenDivide(a, b);
  addThenDivide(a, b, c: c);
}

TestRecursive() {
  var n = readInput();
  
  var res = factorial(n);
  print("Factorial of ${n}: ${res}");  
}

TestLamdaFunction() {
  printMsg("Hello world");
  printMsg("My name is Akagi");
}

TestRequiredAnnotation() {
  Person akagi = Person("Nguyen", "Hoai Phuong");
  print(akagi.fullName);
}

void main(List<String> args) {
  // TestPositionalParameter();
  // TestNamedParameter();
  // TestParamWithDefaultValue();
  // TestRecursive();
  // TestLamdaFunction();
  TestRequiredAnnotation();
}