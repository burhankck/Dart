// soru1: 3 tane double degısken olustur bunların ortalamasını yaz.
//soru 2: kenarlarını gırdıgınız ucgenın cesıdını yazdıran program.
//soru 3: vıze ve fınal notlarını alıp dersı gecıp gecmedıgını bulan program yazın.
// soru 4: kendı adınızı ekrana 5 kere yazdıran uygulamayı tum dongulerle yaz.
//soru 5: 1'den 100'e kadar olan 15 ile tam bölunen sayıların karelerını yazın.
// soru 6: tanımlanan int bir sayının faktöriyelini bulan program.

void main(List<String> args) {
  //soru 1
  double x = 12.5;
  double y = 10.5;
  double z = 16.5;
  print("Girilen $x, $y,$z sayılarının ortalaması ${(x + y + z / 3)}");

  // soru 2

  int a = 3;
  int b = 4;
  int c = 5;
  if (a == b && b == c && a == c) {
    print("Üçgeniniz eşkenar üçgendir.");
  } else if (a != b && b != c && a != c) {
    print("Üçgeniniz çeşitkenar üçgendir.");
  } else {
    print("Üçgeniniz ikizkenar üçgendir.");
  }

  // soru 3
  double vizenotu = 40;
  double finalnotu = 50;
  double ortalama = 0;
  ortalama = ((vizenotu * 40) + (finalnotu * 60)) / 100;
  if (ortalama < 50) {
    print("Dersten $ortalama ile  kaldınız iyi çalışmanız gerekiyor.");
  } else {
    print("Dersi $ortalama ile  başarıyla geçtiniz.");
  }

  // soru 4
  for (int i = 0; i <= 5; i++) {
    print("Burhan KOÇAK");
  }

  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol + 1}.inci döngüde ismim : BURHAN KOÇAK");
    kontrol++;
  }
  int kontrol1 = 0;
  do {
    print("${kontrol1 + 1}.inci döngüde ismim : BURHAN koçak");
    kontrol1++;
  } while (kontrol1 < 5);

  //soru 5
  for (int i = 1; i < 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("15'e tam bölünebilen $i'nin karesi  = ${i * i}");
    }
  }

  int sayi = 6;
  int sonuc = 1;
  int sayac = 1;

  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print("Girdiğiniz $sayi sayısının faktöriyeli :$sonuc");
}
