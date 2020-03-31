void main(List<String> args) {
  var string = PrintItem<String>(5, 'Hi', Status.running);
  string.printItem();

  var d = PrintItem<double>(3, 123.45, Status.stopped);
  d.printItem();

  var pi = PrintItem<PrintItem<String>>(4, string, Status.paused);
  pi.printItem();
}

enum Status {
  stopped,
  running,
  paused
}

class PrintItem<T> {
  int times;
  T item;
  Status status;

  PrintItem(this.times, this.item, this.status);

  printItem() {
    if (status == Status.running) {
      for (var i = 0; i < times; i++) {
        print(item);
      }
    } else if (status == Status.stopped) {
      print("Item stopped: $status ${status.index}");
    } else {
      print("Pause ...");
    }    
  }
}