void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{'yas': 34};
  var mySet = <String>{'burhan', 'ali'};

  var teksayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];
  //spreads operator (2 satırdaki kodu 3 nokta ile kısalttık.)
  var sonListe = [...teksayilar, ...ciftSayilar];
  /*  sonListe.addAll(teksayilar);
  sonListe.addAll(ciftSayilar); */

  print(sonListe);

  var map1 = {'ad': 'burhan'};
  var map2 = {'yas': 30};

  var sonMap = {...map1, ...map2};

  print(sonMap);

  var set1 = {'burhan'};
  var set2 = {'ayşe'};
  var set3 = {'burhan'};
  var set4 = {'ali'};

  var sonSetyapisi = {...set1, ...set2, ...set3, ...set4};
  print(sonSetyapisi);
}
