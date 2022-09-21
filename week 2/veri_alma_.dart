// 2 notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösterin.
// fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayın.
import 'dart:io';

void main(List<String> args) {
  //soru 1
  print("Birinci notu giriniz :");
  int birinciNot = int.parse(stdin.readLineSync()!);

  print("İkinci notu giriniz :");
  int ikinciNot = int.parse(stdin.readLineSync()!);

  double sonuc = (birinciNot + ikinciNot) / 2;
  print("Ortalamanız $sonuc");

  // soru 2
  print("Fiyatı giriniz  :");
  int fiyat = int.parse(stdin.readLineSync()!);
  double sonFiyat = (fiyat * 18) / 100 + fiyat;

  print("SOn fiyat $sonFiyat");
}
// readlineSync Bize string ifade verir. Bunu pars ile double veya int çeviririz.