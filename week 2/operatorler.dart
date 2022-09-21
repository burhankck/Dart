void main(List<String> args) {
  // aritmatik operatörler
  double say1 = 9;
  double say2 = 5;

  print("$say1 + $say2 toplamı ${say1 + say2}");
  print("$say1 - $say2 çıkarımı ${say1 - say2}");
  print("$say1 * $say2 çarpımı ${say1 * say2}");
  print("$say1 / $say2 bölümü ${say1 / say2}");
  print("$say1 % $say2 mod  ${say1 % say2}");

// atama  ve karşılaştırma operatörleri

  double say3 = 5;
  say3 = say3 + 5;
  print(say3);

  say3 += 5;
  print(say3); // say3 = say3 + 5

  say3 %= 4;
  print(say3);

  // <,> <=, >=, ==, !=

  double say4 = 9;
  double say5 = 6;
  if (say4 <= say5) {
  } else {
    print("sayı $say4 küçük ve eşit değildir $say5");
  }

  String isim = "burhan";
  String soyIsim = "kocak";
  if (isim != soyIsim) {
    print("isim soyisimle aynı degildir");
  }

  // mantıksal operatörler
  // && ve , || veya , ! değil
  bool kosul1 = true;
  bool kosul2 = true;
  print(kosul1 && kosul2);
  print(!kosul1);

  bool kosul3 = false;
  bool kosul4 = true;
  print(kosul3 || kosul4);

  // arttırma azaltma operatörleri
  int say6 = 10;
  say6 = say6 + 1;
  say6 += 5;
  print(say6);
  say6++;
  print(say6);

  int say7 = 12;
  print(say7++);
  print(++say7);

  // işlem önceliği
  /* parantezin içi önce
  ++ ve -- degıskenden once gelenler 
  * ve /
  + ve -
  = atama işlemi
  ++ ve -- degiskenden sonra gelenler */

  int s1 = 10, s2 = 5;
  int sonuc = 0;
  sonuc = (s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1;
  print(sonuc);
}
