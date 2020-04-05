import 'dart:async';

class Person {
  String name;
  int age;
  
  Person(this.name, this.age);

  void sayHello() {
    print('Hello. I am $name. I am $age years old.');
  }
}

void main(List<String> args) {
  /**
   * Initialize a "Single-Subscription" Stream controller
   */
  final StreamController ctrl = StreamController(
    onListen: () => print("On listen ..."),
  );

  /**
   * We here add the data that will flow inside the stream
   */
  final StreamSubscription subscription = ctrl.stream.listen((data) {
    if (data is Person) {
      data.sayHello();
      return;
    }
    print(data);
  });

  // Below chunk code will cause error because this is a single-subscription stream
  // final StreamSubscription subscription1 = ctrl.stream.listen((data) {
  //   print('subscription 1: $data');
  // });

  ctrl.sink.add('my data');
  ctrl.sink.add(1234);
  ctrl.sink.add({'a': 'element A', 'b': 'element B'});
  ctrl.sink.add(123.45);
  ctrl.sink.add(1/0);
  ctrl.sink.add(Person("akagi", 34));

  ctrl.close();
}