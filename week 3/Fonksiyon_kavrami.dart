void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 10);
  print("Alan : $sonuc");
  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim : $hacim");
}
// parametresiz fonksiyon geri döndürmeyen değerlerin başına void koyuyoruz.

void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("ÇEvre $cevre");
}
//parametre alan fonksiyon

int alanHesapla(int say1, int say2) {
  //print("Alan ${say1 * say2}");
  return say1 * say2;
}

int hacimHesapla(int a, int b, int c) {
  return a * b * c;
}
