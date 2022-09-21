void main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 6;
  sayilar[2] = 8;
  sayilar[3] = 2;
  sayilar[4] = 1;

  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);
  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "burhan";
  print(isimler);

// int string olarak tanımlamadık. Dynamic olarak algılıyor hata vermez.
  List karisik = List.filled(5, 0);
  karisik[0] = "burhan";
  karisik[1] = 5;
  karisik[2] = false;

  print(karisik);

//Liste elemanlarını gezmek
  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
}
