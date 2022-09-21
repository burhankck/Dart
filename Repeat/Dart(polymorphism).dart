void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;
  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'burhan';

  @override
  void sayName() {
    print('merhaba hosgeldiniz $name');
    print('Karnın aç mı ?');
  }
}

class English implements IUser {
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('Welcome to your home $name');
    print('Let\'s meet our friends in Oxford');
  }
}
