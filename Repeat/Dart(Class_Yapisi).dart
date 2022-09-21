// musterı adı var, parasi var, yasi var.
// bu musterımın yasi 10 dan buyukse islem yapalim
// yeni bir müsteri geliyor yine ayni alanlar
// unutmusuz musterılerın sehirleri
// ben musterılerı gruplasam, yani kumelesem ve bunlar ayni özellikleri ayni sekilde bana gosterebilse

void main() {
  int? money;
  // OOP durumundan null değer döndürmemiz gerekir.
  // Soru isareti (?) null degerde dondurebilir anlamındadır.
  print(money! + 10);
  // print(money + 10); yaptıgımızda hata verir.
  // Cunku money null deger dondurebilir.
  // Null deger olabılecegı ıcın toplama ıslemı yapamaz ve operatorlerı kullanamaz.
  // money! kullanımı kesin olarak bos gelmicek bu deger demektir.
  // Bu cok yanlıs bir kullanımdır.
}

class User {
  // özellikler neler
  // class yapısı icinde User class'ı ile yapılarımızı tanımladık.
  // aynı class'tan bir tane daha olusturup, construction kavramı karsımıza cıkar.

  late final String name;
  late final int money;
  late final int age;
  late final String city;
  // this.name = name; yaptıgımızda late koymamız gerekiyor.
  //late sonradan calısacak, initilazed ettigimizde(sonradan dönecek).

  User(String name, int money, int age, String city) {
    // adamın verdigi dataları buraya islememiz gerekli.
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    //
  }
}
