// Immutable object, after they defined, can not be changed.
// By making instance variables of a class final, those properties can not be changed after assigned some initial value.
// When working on bigger projects, we need to make sure all team members are following strict guidelines.
// One of these guidelines could be to make a class immutable.
// But some idiot could accidentally add a non-final instance variable in a class which could lead to a chain of events.

// To make sure a class must be immutable, we can use @immutable annotation from meta package.
// When this annotation is placed on the class, it forces the class (and any classes inherit from it) to become immutable.

import 'package:meta/meta.dart';

@immutable
class User {
  final String name;

  // an immutable class must use initializer syntax for the constructor
  User(this.name);

  // constructor can have optional body, but instance variables cannot be reassigned
  User.withLog(this.name) {
    print('User created with name: ${this.name}');
  }
}