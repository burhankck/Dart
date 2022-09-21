

void main(List<String> args) {
  Ogrenci burhan = Ogrenci(10, "dodo");
  Ogrenci ali = Ogrenci.idSiz("ali");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "ayşe");

  print(ayse.id);
  print(ayse.isim);
  int sayi = toplam();
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu calıstı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0 || isim.length == 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
