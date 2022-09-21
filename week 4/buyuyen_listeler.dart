void main(List<String> args) {
  List<int> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);
  print(sayilar.length);

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(55);
  print(sayilar3);
  print(sayilar3.length);

   List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  // ikide boş liste. hiç bir fark yok.
}
