// Objectives
// 1. ON clause
// 2. CATCH clause with exception object
// 3. Catch clause with Exception object and StakeTrace Object
// 4. Finally clause
// 5. Create your own custom exception

void main(List<String> args) {
  print("CASE 1: We are sure about which case of exception (divide by zero)");
  try {
    int result = 12 ~/ 0;
    print("the result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by ZERO");
  }

  print("CASE 2: We are not sure about which case of exception");
  try {
    int result = 12 ~/ 0;
    print("the result is $result");
  } catch (e) {
    print("The exception thrown error $e");
  }

  print("CASE 3: Using stack trace to know the events occurred before exception was thrown");
  try {
    int result = 12 ~/ 0;
    print("the result is $result");
  } catch (e, s) {
    print("The exception thrown error $e");
    print("STACK TRACE \n $s");
  }

  print("CASE 4: Whether there is an exception or not, FINALLY clause is always Executed");
  try {
    int result = 12 ~/ 0;
    print("the result is $result");
  } catch (e) {
    print("The exception thrown error $e");
  } finally {
    print("This is the Finally clause and it is always executed");
  }
}