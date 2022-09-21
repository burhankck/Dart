import '../bolum_5/musteri.dart';
import '../musteri.dart';
import 'veritabanı_islemleri.dart';

void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();
  db.baglan();

  Musteri m1 = Musteri(123);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 150;
  print(m1.musterinoSoyle);

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandım");
  } else {
    print("Baplanamadı");
  }
}
