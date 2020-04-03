import 'package:meta/meta.dart';

/**
 * Require annotation
 * By default, all named arguments of a function are optional
 * and their default values, if not provided, are null
 * 
 * Using @required annotation from the meta package, named parameter can be marked required
 */

String getFullName( {@required String firstName, @required String lastName} ) {
  return '$firstName $lastName';
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  String get fullName => getFullName(firstName: firstName, lastName: lastName);
}