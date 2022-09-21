import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  var sonSetyapisi = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);

  sonListe = [...liste1, ...liste2];
  print(sonListe);

  for (int gecici in sonListe) {
    sonSetyapisi.add(gecici * gecici);
  }
  print(sonListe);
  print(sonSetyapisi);

  List<int> girilenNotlar = <int>[];
  // List<int> girilenNotlar2 = List.empty(growable: true);
  int girilenNot = 0;
  do {
    print("Lütfen notunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = ListedekiElemanlarinToplaminiBul(girilenNotlar);
  print("Notların Ortalaması $ortalama");
}

double ListedekiElemanlarinToplaminiBul(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
