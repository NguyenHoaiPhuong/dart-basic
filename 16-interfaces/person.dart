import 'animal.dart';

class Person implements Animal {
  @override
  void canFly() {
    print("Person cannot fly");
  }

  @override
  void canRun() {
    print("Person can run mediumly");
  }

  @override
  void canSing() {
    print("Person can sing well");
  }

  @override
  void canTalk() {
    print("Person can talk well");
  }  
}