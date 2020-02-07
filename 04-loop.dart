import 'dart:io';

int factorial(int input) {
  if (input < 0) {
    print("Cannot calculate the factorial of a negative number: ${input}");
    return -1;
  }
  if (input == 0) {
    return 1;
  }

  int output = 1;
  for (int i = 1; i < input + 1; i++) {
    output *= i;
  }

  return output;
}

void TestForLoop() {
  print("Test for loop...");

  print("Input an integer number:");
  var rawString = stdin.readLineSync();
  int input = int.parse(rawString);
  int output = factorial(input);
  print("Factorial of ${input} is ${output}");

  print("---------------------------");
}

void TestForInLoop() {
  
}

void main(List<String> args) {
  TestForLoop();
}