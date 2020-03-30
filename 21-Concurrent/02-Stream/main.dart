import 'dart:async';


int callback(int value) {
  print("callback value: $value");
  return (value + 1) * 2;
}

bool condition(int value) {
  print("condition value $value");
  return (value < 5);
}

// Repeatedly emit events at period intervals
void TestPeriodic() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  await for (int i in stream) {
    print(i);
  }
}

// Take the first number of events
void TestTake() async {
  Duration interval = Duration(seconds: 1);
  
  // Here is an infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Here is a finite stream which only takes 5 events
  stream = stream.take(5);

  await for (int i in stream) {
    print(i);
  }
}

// Take events which satisfy the condition
void TestTakeWhile() async {
  Duration interval = Duration(seconds: 1);

  // Here is an infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Here is a finite stream. Value comes out from callback will come into this 
  stream = stream.takeWhile(condition);

  await for (int i in stream) {
    print(i);
  }
}

// Skip some first emitted events
void TestSkip() async {
  Duration interval = Duration(seconds: 1);

  // Here is an infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Here is a finite stream
  stream = stream.take(7);
  stream = stream.skip(2);

  await for (int i in stream) {
    print(i);
  }
}

// Skip some emitted events which matched the given condition
void TestSkipWhile() async {
  Duration interval = Duration(seconds: 1);

  // Here is an infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Here is a finite stream
  stream = stream.take(7);
  stream = stream.skipWhile(condition);

  await for (int i in stream) {
    print(i);
  }
}

void TestToList() async {
  Duration interval = Duration(seconds: 1);

  // Infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Finite stream
  stream = stream.take(5);

  List<int> values = await stream.toList();
  for (var value in values) {
    print(value);
  }
}

void TestListen() {
  var interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  stream.listen((int value) {
    print(value);
  });
}

void TestForEach() {
  var interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  stream.forEach((value) {
    print(value);
  });
}

void TestLength() async {
  var interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  print(await stream.length);
}

void main(List<String> args) {
  // TestPeriodic();
  // TestTake();
  // TestTakeWhile();
  // TestSkip();
  // TestSkipWhile();
  // TestToList();
  // TestListen();
  // TestForEach();
  TestLength();
}
