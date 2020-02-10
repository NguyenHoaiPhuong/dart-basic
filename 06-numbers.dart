void TestNumbers() {
  print("Test numbers...");

  int num1 = 10;
  double num2 = 10.10;

  print(num1);
  print(num2);

  print("-----------------------------");
}

void TestParsing() {
  print("Test parsing numbers...");

  int num1 = num.parse('12');
  // double num2 = num.parse('AAAA');

  print(num1);
  // print(num2);

  print("-----------------------------");
}

void TestNumClassProperties() {
  print("Test number properties...");

  int n = 20;
  print("hash code: ${n.hashCode}");
  print("Is n odd: ${n.isOdd}");
  print("Is n even: ${n.isEven}");

  var x = 1 / 0;
  print("Is x finite: ${x.isFinite}");
  print("Is x finite: ${x.isFinite}");
  print("Is x Nan: ${x.isNaN}");        // Nan = Not a number

  print("-----------------------------");
}

void TestNumClassMethods() {
  print("Test number class methods...");

  double num = -10.51;
  print("Original number: ${num}");
  print("abs: ${num.abs()}");
  print("ceil: ${num.ceil()}");
  print("floor: ${num.floor()}");
  print("round: ${num.round()}");
  print("truncate: ${num.truncate()}");

  print("-----------------------------");
}
void main(List<String> args) {
  // TestNumbers();
  // TestParsing();
  // TestNumClassProperties();
  TestNumClassMethods();
}