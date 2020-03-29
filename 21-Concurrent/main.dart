import 'dart:async';
import 'dart:io';

// Synchronous
void Test1() async {
  print("program start");
  print(await future());
  // print(future());
  print("program end");
}

void Test2() {
  print("program start");
  future().then((value) => print(value));
  print("program end");
}

// Async
void Test3() {
  print("program start");
  future().then((value) => print(value));  
  event1().then((value) => print(value));
  event2().then((value) => print(value));
  event3().then((value) => print(value));
  scheduleMicrotask(() {
    sleep(Duration(seconds: 2));
    print("This is a microtask");
  });
  print("program end");
}

// Sync
void Test4() async {
  print("program start");
  print(await future());  
  print(await event1());
  print(await event2());
  print(await event3());
  print("program end");
}

void main(List<String> args) {
  // Test1();
  // Test2();
  // Test3();
  Test4();
}

Future future() async {
    Completer completer = Completer();

    Future.delayed(Duration(seconds: 1), () {
      completer.complete("delayed call");
    });

    return completer.future;
}

Future<String> event1() async {
  return Future.delayed(Duration(seconds: 1), () => "This is event 1");
}


Future<String> event2() async {
  return Future.delayed(Duration(seconds: 1), () => "This is event 2");
}


Future<String> event3() async {
  return Future.delayed(Duration(seconds: 1), () => "This is event 3");
}