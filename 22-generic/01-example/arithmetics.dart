import 'dart:core';

// generic add function
T add<T extends num>(T a, T b) {
  return a + b;
}