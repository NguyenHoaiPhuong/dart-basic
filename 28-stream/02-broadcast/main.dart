import 'dart:async';

void main(List<String> args) {
  StreamController<int> ctrl = StreamController<int>.broadcast(
    onListen: () => print("On listen ..."),
  );

  StreamSubscription subscriptionOdd = ctrl.stream
  .where( (data) => data % 2 == 1 )
  .listen( (data) => print('Odd data $data') );

  StreamSubscription subscriptionEven = ctrl.stream
  .where( (data) => data % 2 == 0 )
  .listen( (data) => print('Even data $data') );

  for (int i = 0; i < 10; i++) {
    ctrl.sink.add(i);
  }
}