library rune;

import 'dart:core';

void test_char_code() {
  String x = 'aAbBcCdD';

  print("List of string code units:");
  print(x.codeUnits);

  print("Iterate each code unit in the string:");
  int len = x.length;
  var res ="";
  for (var i = 0; i < len; i++) {
    res += "${x.codeUnitAt(i)} ";
  }
  print(res);
}

void test_runes() {
  String x = 'aAbBcCdD';

  print("Runes of the string:");
  print(x.runes);

  print("Iterate the string rune:");
  x.runes.forEach((int charCode) {
    String str = String.fromCharCode(charCode);
    String res = "${charCode} - ${str}";
    print(res);
  });
}