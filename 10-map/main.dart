void TestMapSyntax() {
  print("Test map syntax");

  var loginInfo = new Map();
  loginInfo["username"] = "Nguyen Hoai Phuong";
  loginInfo["password"] = "1234";
  print(loginInfo);

  loginInfo["username"] = "akagi";
  print(loginInfo);

  print("-----------------------");
}

void TestMapProperties() {
  print("Test map properties");

  var loginInfo = new Map();
  loginInfo["username"] = "Nguyen Hoai Phuong";
  loginInfo["password"] = "1234";
  
  print("Map length: ${loginInfo.length}");
  print("keys: ${loginInfo.keys}");
  print("values: ${loginInfo.values}");

  print("-----------------------");
}

void TestMapMethods() {
  print("Test map methods");

  var loginInfo = new Map();
  loginInfo["username"] = "Nguyen Hoai Phuong";
  loginInfo["password"] = "1234";
  
  loginInfo.forEach((key, value) {
    print(key);
    print(value);
  });

  loginInfo.remove("username");
  print("After remove username: ${loginInfo}");

  loginInfo.clear();
  print("After clear: ${loginInfo}");

  loginInfo.addAll({"username": "Nguyen Hoai Phuong", "password": "1234"});
  print("After addAll: ${loginInfo}");
  
  print("-----------------------");
}

void main(List<String> args) {
  TestMapSyntax();
  // TestMapProperties();
  // TestMapMethods();
}