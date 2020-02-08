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
  print("Test for - in loop...");

  List list = [12, 13, 14];

  for (var elem in list) {
    print(elem);
  }

  print("---------------------------");
}

void TestWhileLoop() {
  print("Test while loop...");

  int n = 10;
  while (n > 0) {
    print(n);
    n--;
  }

  print("---------------------------");
}

void TestDoWhileLoop() {
  print("Test do while loop...");

  int n = 10;
  do {
    print(n);
    n--;
  } while (n > 0);

  print("---------------------------");
}

void TestBreak() {
  print("Test break...");

  print("Print integer from 0 to 9, but break at 5");
  for (var i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print(i);
  }

  print("---------------------------");

}

void TestContinue() {
  print("Test continue...");

  print("Print only odd number from 1 to 10");
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  print("---------------------------");
}

void TestLabel() {
  print("Test label...");

  outerloop:
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break outerloop;
    }
    print(i);
  }
  print("Here is after the for loop");

  print("---------------------------");
}

void main(List<String> args) {
  // TestForLoop();
  // TestForInLoop();
  // TestWhileLoop();
  // TestDoWhileLoop();
  // TestBreak();
  // TestContinue();
  TestLabel();
}