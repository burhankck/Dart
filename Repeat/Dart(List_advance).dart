void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw, name: 'bmw x5', money: 100, isSecondHand: false);

  final CarItems = [
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 100,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota varis', money: 110),
    CarModel(
        category: CarModels.mercedes,
        name: ' mercedes C 180',
        money: 150,
        isSecondHand: true),
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x3',
        money: 120,
        isSecondHand: false),
    CarModel(
        category: CarModels.toyota,
        name: 'toyota corolla',
        money: 170,
        isSecondHand: true),
    CarModel(
        category: CarModels.toyota,
        name: 'toyota varis',
        money: 150,
        isSecondHand: true),
    CarModel(
        category: CarModels.toyota,
        name: 'toyota supra',
        money: 160,
        isSecondHand: true),
  ];

  final resultCount = CarItems.any((element) => element.isSecondHand == true);
  print(resultCount);
// any içerisinde bu duruma uyan var mı varsa onları dondurur.
  final resultCount1 =
      CarItems.where((element) => element.isSecondHand == true).length;
  print(resultCount1);
  // where ise kac tane var onları dondurur. .Lenght yaparsak kac tane oldugunu gosterır bıze.

  final newCar =
      CarModel(category: CarModels.toyota, name: 'toyota corolla', money: 170);

  // final isHaveCar = CarItems.any((element) => element.name = newCar.name);
  // print(isHaveCar);
  // Bu yöntemle yeni araba bizde var mı yok mu bakabiliriz. Fakat daha kısa yolu var onu görelim bir alt satırda.

  final isHaveCar = CarItems.contains(newCar);
  if (isHaveCar) {
    print('Elimizde var');
  } else {
    print('Patron yok alalım');
    // contains daha kısa sekilde karsılatırmamıza yarıyor var mı yok mu ?
    // fakat else durumunu bıze gerı donduruyor.
    // Cunku bır sınıf tutuyorsak lıstelerı kendı ıcınde karsılastırma yapıyorsak eger ayrı ayrı referans tipleri tuttugu ıcın ESIT SAYILMAZ !!!
    // Esıt sayılmalarını ıstıyorsan Equality kendin yazacaksın veya sag tık yapıp kendısı olusturuyor !!!!!!!
  }

  final resultToyotaMore150 = CarItems.where((element) {
    return element.category == CarModels.toyota && element.money > 150;
  }).join();
  print(resultToyotaMore150);
  // ToString methodunu bastırıyor. Asagıda toString override etmemiz gerekli.

  final carNames = CarItems.map((e) => e.name).join(',');
  print(carNames);

  final HyundaiCar =
      CarItems.any((element) => element.category == CarModels.hyundai);
  print(HyundaiCar);
  // bu sekilde yapabiliriz. Ama daha iyi bir gösterim var alt tarafa bakalım

  try {
    final HyundaiCar1 = CarItems.singleWhere(
        (element) => element.category == CarModels.hyundai);
    print(HyundaiCar1.name);
    // Dene sonuc gelıyorsa hyundai1.name bastır
    // gelmiyorsa catch duser.
  } catch (e) {
    print('Araba yok malesef efendim');
  }
  //  singleWhere 1 tane varsa yeterli anlamındadır. Bu sekilde hata verdi.
  // Cunku singleWhere kullandıgımızda data yoksa bize hata verir.
  // Bu yüzden try catch ile sorunu gideririz.

  final index = CarItems.indexOf(newCar);
  print(index);
 
  CarItems.add(CarModel(
      category: CarModels.mercedes, name: 'mercedes C200', money: 200));
  print(CarItems);

  
  CarItems.removeWhere(
      (element) => element.category == CarModels.toyota || element.money < 160);
  print(CarItems);
}

// benim bir arabalar sınıfım olacak
// arabalarin modeli, ismi, parası kesin olacak sehri olmayacak, ikinci el durumu eger musteri söylemezse
// her urun ıkıncı el kabul edılecek

// benim  5 tane arabam olacak.
// bu arabalarımın kac tanesı ıkıncı el
// yeni bir araba geldi bu bizde var gibi hissediyom dogru mu ?
// bana toyota olan ve parasi 150'den buyuklerin ısmını soyler mısın.
// Sadece ısımlerı yanyana yazabılır mısınız.
// benim elımde hyundai var mı
// yeni gelen arabaya var demistiniz bu kacinci siradadir ?
// yeni araba aldım ferrari ekler misiniz.
// son ekleneni silelim.
// toyota olan 160'dan kucuk olanları sılelım

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name -$money';
  }
  // override ettigimiz icin isimve para gozuktu.
}

enum CarModels { bmw, mercedes, toyota, hyundai }
