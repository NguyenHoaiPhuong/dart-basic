// cascades (...) allow us to perform a sequence of operations on the same object

class Demo {
  var a;
  var b;

  void setA(x) {
    a = x;
  }

  void setB(x) {
    b = x;
  }

  void showValues() {
    print(a);
    print(b);
  }
}

void main(List<String> args) {
  var demo = Demo();

  demo..setA(5)..setB(10.5)..setA(5.5);
  demo.showValues();
}