// Objectives:


void main(List<String> args) {
  try {
    depositMoney(-200);
  } catch (e, s) {
    print("Exception error : $e");
    print("Stack trace : $s");
  } finally {
    print("Finally clause is always executed");
  }
}

class DepositException implements Exception {
  // Override toString method
  String toString() => "You cannot enter amount less than 0";
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  }
}