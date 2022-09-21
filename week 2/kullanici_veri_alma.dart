import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim : $isim");

// "35" degerı yazarsak eğer metinsel olarak alır.

  print("Yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  print("girilen yaş : $yas");
}
