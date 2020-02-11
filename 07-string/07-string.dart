void TestStringSyntax() {
  print("Test string syntax...");

  String str1 = 'This is a single line string';
  print(str1);

  String str2 = '"This is a single line string"';
  print(str2);

  String str3 = '''This is a
multiple line string''';
  print(str3);

  print("-----------------------------");
}

void TestStringConcatenation() {
  print("Test string concatenation...");

  String str1 = 'hello ';
  String str2 = 'world';

  String res = str1 + str2;
  print(res);

  print("-----------------------------");
}

void TestStringInterpolation() {
  print("Test string interpolation...");

  int n = 1 + 1;
  String str1 = "The sum of 1 and 1 is ${n}";
  print(str1);

  String str2 = "The sum of 2 and 2 is ${2+2}";
  print(str2);

  print("-----------------------------");
}

void TestStringProperties() {
  print("Test string properties...");

  String str = "Hello world";
  print("Is string empty? ${str.isEmpty}");
  print("String length: ${str.length}");

  print("-----------------------------");
}

void TestStringMethods() {
  print("Test string properties...");

  String str = "Hello world";
  print("Original string: ${str}");
  print("To lower case: ${str.toLowerCase()}");
  print("To upper case: ${str.toUpperCase()}");

  print("-----------------------------");
}

void main(List<String> args) {
  // TestStringSyntax();
  // TestStringConcatenation();
  // TestStringInterpolation();
  // TestStringProperties();
  TestStringMethods();
}