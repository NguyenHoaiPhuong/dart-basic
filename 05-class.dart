class Employee {
  String name;

  // getter method
  String get emp_name {
    return name;
  }

  // setter method
  void set emp_name(String name) {
    this.name = name;
  }

  // function definition
  void fullname() {
    print(this.name);
  }
}

void main(List<String> args) {
  Employee akagi = new Employee();
  akagi.name = 'Akagi';
  akagi.fullname();
  // print(akagi.name);
}