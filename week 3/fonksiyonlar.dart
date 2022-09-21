// soru1 : parametre olarak bir tane int sayı alan fonksiyon yazınız.
// bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün.

// soru2: Daire alanını hesaplayan fonksiyon yazınız. Pı sayısı opsiyonel olmalı.
// Eğer pi sayısı verilmediyse opsiyonel olarak 3.14 alınmalı.

//soru3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyonu yazınız.
// bu fonksiyon kenar değerlerine göre bu üçgenin çeşitkenar ikizkenar veya eşkenar olduğunu ekrana yazdırsın.
// Geriye değer döndürmesin.

void main(List<String> args) {
  int toplam = ciftSayilarinToplami(15);
  print("toplam $toplam");

  double alan = daireAlanHesapla(2);
  print("Alan $alan");
  double alan2 = daireAlanHesapla(2, 3);
  print("Alan2 $alan2");

  ucgenler(birinciKenar: 2, ikinciKenar: 6, ucuncuKenar: 6);
}

double daireAlanHesapla(double yariCap, [double piSayisi = 3.14]) {
  return piSayisi * yariCap * yariCap;
}

int ciftSayilarinToplami(int sayi) {
  int toplam = 0;

  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }
  return toplam;
}

void ucgenler(
    {int birinciKenar = 1, int ikinciKenar = 1, int ucuncuKenar = 1}) {
  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar) {
    print("Eşkenar üçgendir.");
  } else if (birinciKenar == ikinciKenar ||  birinciKenar == ucuncuKenar || ikinciKenar == ucuncuKenar) {
    print("İkizkenar üçgendir.");
  } else {
    print("Çeşitkenar üçgendir.");
  }
}
