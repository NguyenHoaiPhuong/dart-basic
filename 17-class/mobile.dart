library mobile;

enum Color {
  RED,
  YELLOW,
  BLUE,
  GREEN,
  PURPLE,
  GREY,
  BLACK,
  ORANGE,
  PINK,
}

class Mobile {
  // Properties - Instance variables
  Color color;
  String brandName;

  // Methods - Functionalities
  void calling() => print("Mobile can do calling");
  void musicPlaying() => print("Mobile can play music");
  void display() => print("Brand name: ${this.brandName}, color: ${this.color}");

  // Default constructor
  Mobile(Color color, String brandName) {
    this.color = color;
    this.brandName = brandName;
  }
  // Named constructors
  Mobile.color(this.color);
  Mobile.brandName(this.brandName);
}