// Arithmetic Operators

import 'dart:math';

void TestArithmeticOperator() {
  int a = 10;
  double b = 2.1;
  double res;

  // Add
  res = a + b;
  print("${a} + ${b} = ${res}");

  // Subtract
  res = a - b;
  print("${a} - ${b} = ${res}");

  // -expr
  res = -(a + b);
  print("-(${a} + ${b}) = ${res}");

  // Multiply
  res = a * b;
  print("${a} * ${b} = ${res}");

  // Divide
  res = a / b;
  print("${a} / ${b} = ${res}");

  // Divide and return integer result
  var res1 = a ~/ b;
  print("${a} ~/ ${b} = ${res1}");

  // Get the remainder of an integer division (modulo)
  res = a % b;
  print("${a} % ${b} = ${res}");

  // Increment
  b++;
  print("${b-1}++ = ${b++}");
}

void main() {
  TestArithmeticOperator();
}