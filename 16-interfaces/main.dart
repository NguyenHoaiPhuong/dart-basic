import 'animal.dart';
import 'person.dart';
import 'bird.dart';

void main(List<String> args) {
  print("----------------Person----------------");
  Person akagi = new Person();
  akagi.canFly();
  akagi.canRun();
  akagi.canSing();
  akagi.canTalk();

  print("----------------Bird----------------");
  Bird kiki = new Bird();
  kiki.canFly();
  kiki.canRun();
  kiki.canSing();
  kiki.canTalk();

  print("----------------Animal----------------");
  Animal animal = new Animal();
  animal.canFly();
  animal.canRun();
  animal.canSing();
  animal.canTalk();
}