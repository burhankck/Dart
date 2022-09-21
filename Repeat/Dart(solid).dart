void main(List<String> args) {
  IDatabase database = SQL();

  database = Mongo();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalicaztion {
  final UserManager manager;

  void updateNameAndLocaziation(args) {
    changeLocalicaztion();
    manager.changeUserName('a');
    changeLocalicaztion();
  }

  void changeLocalicaztion() {
    print('object');
  }
}

class Product {
  final String name;
  final int money;
  Product({
    required this.name,
    required this.money,
  });
}

class ProductCategories extends Product {
  ProductCategories(String name, int money) : super(name, money);

  final String category = ';l';
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO implement write
  }
}

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}
// interface parçalayarak daha fazla geliştirmeye müsait olabiliyor.

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;
  DeviceCameraManager({
    required this.iphoneCameraRead,
  });
  @override
  void readQR() {
    iphoneCameraRead
  }
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO implement readQR
  }
}
 // Burdaki amacımız ara dallar ile üst class'ların bagımlıkları olmaması lazım. 
 // Kısaca 