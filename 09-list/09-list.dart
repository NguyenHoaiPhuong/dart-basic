void TestFixedLengthList() {
  print("Test fixed length list...");

  var lst = new List(3);
  lst[0] = 12;
  lst[1] = 13;
  lst[2] = 11;
  print(lst);

  // Following code will cause error
  // Unhandled exception:
  // Unsupported operation: Cannot add to a fixed-length list
  // lst.add("akagi");

  print("-----------------------------");
}

void TestGrowableList() {
  print("Test growable list...");

  var lst = new List();
  lst.add(12);
  lst.add(13);
  lst.add(11);
  lst.add("akagi");
  lst.addAll(["yushin", "mogami"]);
  print(lst);

  int value = 13;
  bool res = lst.remove(value);
  print(res);
  print('The value of list after removing the list element ${value}');
  print(lst);

  print("-----------------------------");
}

void TestListProperties() {
  print("Test list properties...");

  var lst = [12, 13, 11, "akagi", 15.5];
  print(lst);
  print("Is the list empty? ${lst.isEmpty}");
  print("Length of the list: ${lst.length}");
  print("First element of the list: ${lst.first}");
  print("Last element of the list: ${lst.last}");  
}

void main(List<String> args) {
  // TestFixedLengthList();
  TestGrowableList();
  // TestListProperties();
}