import 'package:uuid/uuid.dart';

var uuidGenerator = Uuid();

class Person {
  int id;
  String name;
  String uuid;

  static final Map<int, Person> _cache = {};

  static Person getPerson(int id) {
    return _cache[id];
  }

  factory Person(int id, String name) {
    var uuid = uuidGenerator.v4();
    var person = Person._create(id, name, uuid);
    _cache[id] = person;

    return person;
  } 

  // named constructor
  Person._create(this.id, this.name, this.uuid) {
  }

  @override
  String toString() {
    return 'id: ${id}, name: ${name}, uuid: ${uuid}';
  }
}