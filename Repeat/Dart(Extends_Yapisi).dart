// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final userNormal = User('vb', 15);
  final userBank = BankUser('veli', 150, 333);
  final userSpecial = SpecialUser('ali', 111, 3456, 20);

  userNormal.sayMoneyWithCompany();
  userBank.sayMoneyWithCompany();
  userSpecial.sayMoneyWithCompany();
}

//paralarini görebilmelerini istiyorum benim banka ismimle birlikte
abstract class IUser {
  final String name;
  final int money;

  void sayMoneyWithCompany() {
    print('ahmet - $money paraniz vardir');
  }

  IUser(this.name, this.money);
//   void sayMoneyWithCompanyName() {
//     print('ahmet - $money paraniz vardir');
//     // burada money bilmiyoruz suan. Soyut class yaptık ama.
//     // bu yüzden diger class'ları extends edip IUser yapacagız.
//   }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
  // yukarıda bu class'tan turettigimiz icin bize kızıyor.
  // Cunku özellikleri o sınıfa tasımadık.
  // tasımamız icin .super kullanırız.
  // abstract yaptıgımız icin.

}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogin() {
    print(money);
  }
  // fonksiyon olusturup hepsine yazmamız gerekir.
  // fakat 100 tane kullanicimiz var hepsine tek tek yazamayız.,
  // bu yüzden abstract sınıf olusturuyoruz. Diger class'lar icin ortak kullanim gibi düsünebiliriz.
}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int disscount;

  SpecialUser(String name, int money, this.bankingCode, this.disscount)
      : super(name, money);

  int get calculateMoney => money - (money ~/ disscount);
}
