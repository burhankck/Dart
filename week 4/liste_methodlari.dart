void main(List<String> args) {
  List<int> sayilar = [10, 5, 8, 15, 3];

  if (sayilar.isEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Boş mu :" + sayilar.isEmpty.toString());
  print("Eleman sayısı: ${sayilar.length}");
  print("Ters sırada ${sayilar.reversed}");
  print(sayilar);
  sayilar.add(52);
  print(sayilar);
  sayilar.remove(3); // verilen elemanı siler.
  print(sayilar);
  sayilar.removeAt(1); // verilen indexi siler.
  print(sayilar);
  //sayilar.clear(); // işlemi siler.
  if (sayilar.contains(15)) {
    print("Listede 15 var");
  } else {
    print("Listede 15 yok.");
  }
  print(sayilar);
  print(sayilar.elementAt(2)); //indeksi söyleriz sayıyı gösterir..
  print(sayilar.indexOf(15)); // Sayıyı söyleriz indeksi verir.
  sayilar.shuffle();
  print(sayilar);
}
