// Arithmetic Operators
void TestArithmeticOperators() {
  print("TestArithmeticOperator");

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

  // Decrement
  a--;
  print("${a+1}-- = ${a}");

  print("-------------------------------");
}

void TestRelationalOperators() {
  print("TestRelationalOperator");
  // Greater than
  print("Is 3 > 2?  ${3 > 2}");
  print("Is 2 > 3?  ${2 > 3}");

  // Lesser than
  print("Is 2 < 3?  ${2 < 3}");
  print("Is 3 < 2?  ${3 < 2}");

  // Greater than or equal to
  print("Is 3 >= 2?  ${3 >= 2}");
  print("Is 3 >= 3.0?  ${3 >= 3.0}");

  // Lesser than or equal to
  print("Is 3 <= 2?  ${3 <= 2}");
  print("Is 2.0 <= 2?  ${2.0 <= 2}");

  // Equality
  print("Is 2 == 2.0? ${2 == 2.0}");

  // Not equal
  print("Is 2 != 2.0? ${2 != 2.0}");

  print("-------------------------------");
}

void TestAssignmentOperators() {

}

void main() {
  TestArithmeticOperators();
  TestRelationalOperators();
}