import 'dart:async';


int callback(int value) {
  print("callback value: $value");
  return (value + 1) * 2;
}

void TestPeriodic() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  await for (int i in stream) {
    print(i);
  }
}

void TestTake() async {
  Duration interval = Duration(seconds: 1);
  
  // Here is an infinite stream
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  // Here is a finite stream
  stream = stream.take(5);

  await for (int i in stream) {
    print(i);
  }
}

void main(List<String> args) {
  // TestPeriodic();
  TestTake();
}

