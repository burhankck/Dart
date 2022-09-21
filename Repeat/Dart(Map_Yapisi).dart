void main() {
  // musteri geldi adi ahmet parasi 20 TL

  Map<String, int> users = {"ahmet": 20, 'mehmet': 40};

  // musteri ahmetin ne kadar parası var
  print('Ahmetin parasi ${users['ahmet']}');
  for (var item in users.keys) {
    print('${item}');
  }
// NOT : Listenin ilk elemanı key, İkinci elemanı value.
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)}-${users.values..elementAt(i)}');
  }
 // Ben bankayım musterılerımın bırden fazla hesabı olabılır
// ahmet bey 3 hesabı var sırayla 100,300,200
// mehmet bey 2 hesabı var 30, 50
// Veli bey 1 hesabı var 40
// Adamların hesaplarını kontrol et herhangi hesapta 150'TL den fazla ise krediniz hazır de.
  print('------');
  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 200, 300],
    'mehmet': [30, 50],
    'veli': [50]
  };
  for (var item in vbBank.keys) {
    // bankanin tum elemanları
    for (var money in vbBank[item]!) {
      // userın hesaplarını dolasıyoruz.
      if (money > 150) {
        print('krediniz hazır');
        return;
        // Ahmet beye iki kere krediniz hazır diye mesaj geliyor.
        // Bunun önlenmesi için return; yaparak for döngüsünü sonlandırıyoruz.
      }
      for (var item in vbBank.keys) {
        int result = 0;
        for (var money in vbBank[item]!) {
          result = result + money;
        }
        print('${vbBank[item]} senin toplam paran -> $result');
      }
    }
  }
}
