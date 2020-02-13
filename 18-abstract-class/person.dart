library Person;

// Abstract class Person
abstract class Person {
  String fullName;
  String nationality;

  // Abstract Methods
  void canSing();
  void canRun();
  void canTalk();

  void Greeting() => print("Hello. My name is ${this.fullName}. I am from ${this.nationality}");
}

class Italian extends Person {
  Italian(String fullName) {
    this.fullName = fullName;
    this.nationality = "Italian";
  }

  @override
  void canRun() {
    print("Italian can run well.");
  }

  @override
  void canSing() {
    print("Italian can sing well.");
  }

  @override
  void canTalk() {
    print("Italian can talk well.");
  }
  
}