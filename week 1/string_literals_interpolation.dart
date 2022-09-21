void main(List<String> args) {
  String isim = "burhan";
  String soyIsim = "kocak";
  var ders = "Dart'ın Kullanımı";
  String dersler = 'Dart\'ın Kullanımlarını Yapacağız';

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'te bulunan karakter sayısı:" +
      soyIsim.length.toString());
  print("Karakter sayısı ${soyIsim.length}");
  print("Adım olan $isim kelimesinde bulunan karakter sayısı  ${isim.length}");

  double en = 10;
  double boy = 12;
  print("Eni $en ve boyu $boy olan diktörgennin alanı : $en*$boy");
  print("Eni $en ve boyu $boy olan diktörgennin alanı : ${en * boy}");
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan diktörgennin alanı : ${(en * boy).toInt()}");
}
