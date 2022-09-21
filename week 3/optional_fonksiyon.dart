void main(List<String> args) {
  /* int toplam = sayilar(4, 5, 6);
  print("Toplam $toplam"); */
  /*  int toplam = sayilarTopla(5, 4, 7);
  print("Toplam : $toplam"); */
  int toplam = sayilarTopla(10, say2: 5, say3: 4, say1: 8);
  print("Toplam $toplam");

  int hacim = hacimHesapla(boy :5, en: 3);
  print("Hacim $hacim");
  // süslü parantezde bu kısımda sayıları ve değerleri yazmak zorundayız.
}

//required parameter
/* /* int sayilar(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3; */
}
 */
//optional
// köşeli parantez içine aldığımızda değer atamak zorundayız yoksa null değer return kısmında toplanamaz.
/* int sayilarTopla(int say1, [int say2 = 0, int say3 = 0]) {
  return say1 + say2 + say3;
} */

// optional named (opsiyonel isimlendirme)
// hem süslü parantez hemde köşeli parantez kullanılamaz.
int sayilarTopla(int say4, {int say1 = 0, int say2 = 0, int say3 = 0}) {
  return say4 + say1 + say2 + say3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik= 1}) {
  return en * boy * yukseklik;
}
