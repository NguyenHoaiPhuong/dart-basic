import 'animal.dart';

class Bird extends Animal {
  @override
  void canFly() {
    print("Bird can fly well");
  }

  @override
  void canSing() {
    print("Bird can sing well");
  } 
}