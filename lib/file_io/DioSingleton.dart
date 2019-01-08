class DioSingleton{
  DioSingleton._internal();
  static final DioSingleton _dioSingleton = new DioSingleton._internal();
  factory DioSingleton() => _dioSingleton;
}

class Singleton {
  static final Singleton _singleton = new Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}