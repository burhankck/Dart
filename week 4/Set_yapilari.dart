void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("burhan");
  isimler.add("dodo");
  isimler.add("sado");
  isimler.add("burhan");
  isimler.add("yaso");
  isimler.add("burhan");

  bool sonucum = isimler.remove("burhan");
  print("sonuc : " + sonucum.toString());

  print("*****");

  // Set kullandığım için 4 elemanlı. Liste kullansaydım 6 elemanlı olacaktı.
// Set yapısında index değerleri yoktur. Sırayla tutulmaz.
  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 1, 2, 1, 1]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numaralar) {
    print("no : $s1");
  }
  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  for (int s1 in numaralar) {
    print("add all'dan sonra no : $s1");
  }
}
