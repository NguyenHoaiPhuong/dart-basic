class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }
  
  Singleton._internal();

  String _status;

  String get status => _status;
  void set status (String st) => _status = st; 
}