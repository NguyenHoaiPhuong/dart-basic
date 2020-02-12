// Optional Positional parameter
import '../04-loop/04-loop.dart';

add(int a, int b, [int c, int d]) {
  int res;
  res = a + b;
  if (c != null) {
    res += c;
  }
  if (d != null) {
    res += d;
  }

  print("${a} + ${b} + ${c} + ${d} = ${res}");
}

// Optional Named parameter
multiply(int a, int b, {int c, int d}) {
  int res;
  res = a * b;
  if (c != null) {
    res *= c;
  }
  if (d != null) {
    res *= d;
  }

  print("${a} * ${b} * ${c} * ${d} = ${res}");
}

// Optional Positional parameter with default value
addThenMultiply(int a, int b, [int c = 1]) {
  var res = a + b;
  res *= c;
  print("(${a} + ${b}) * ${c} = ${res}");
}

// Optional Named parameter with default value
addThenDivide(int a, int b, {int c: 1}) {
  dynamic res = a + b;
  res /= c;
  print("(${a} + ${b}) / ${c} = ${res}");
}

int factorial(int n) {
  if (n < 0) {    
    return -1;
  }
  if (n > 1) {
    int res = n;
    return res *= factorial(n - 1);
  }
  return 1;
}