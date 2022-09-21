void main(List<String> args) {
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i");
    }
  }

  List isimler = ["burhan", "dodo"];
  for (String gecici in isimler) {
    print("$gecici");
  }

  for (int i = 0; i < isimler.length; i++) {
    print("Okunan eleman" + isimler[i]);
  }

  int sayac = 0;
  while (sayac < 3) {
    print("Okunan sayac değeri $sayac");
    sayac++;
  }

  int sayac2 = 0;
  do {
    print("Okunan sayac degeri:$sayac2");
    sayac2++;
  } while (sayac2 < 5);

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri: $i");
  }

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("continue i değeri: $i");
    } else {
      print("i degeri 5'ten kücük olduğu için işlem yapmayacak.");
      continue;
    }
  }

  Disdongu:
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");

      if (i == 2) {
        break Disdongu;
      }
    }
  }
}
