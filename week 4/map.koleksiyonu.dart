void main(List<String> args) {
  //Süslü parantez görünce aklınıza map yapıları gelsin.
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String, dynamic> burhan = {"soyad": "koçak", "yas": 30, "bekarMi": true};
  print(burhan['yas']);

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 55;

  for (String oankiAnahtar in burhan.keys) {
    print(burhan[oankiAnahtar]);
    print(oankiAnahtar);

    for (dynamic deger in burhan.values) {
      print(deger);
    }
    for (var element in burhan.entries) {
      print("Key değeri : ${element.key} değeri ${element.value}");
    }
  }
  if (burhan.containsKey('yas')) {
    print("Bulunan yaş değeri ${burhan['yas']}");
  }
}
