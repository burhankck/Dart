void main(List<String> args) {
  toplam();
  int fark = cikarma(15, 4);
  print("Fark $fark");
  int sonuc = carpim(5, 6);
  //print("Sonuç : $sonuc");
  // => Fat arrow tek satırlık kod olmaz zorunda.
  print("Çarpım : " + carpim(5, 6).toString());
  //print("Büyük sayıyı göster :" + buyuksayi(10, 7).toString());
  print("Küçük sayıyı göster :" + kucuksayi(5, 9).toString());
}

toplam() {
  int say1 = 10, say2 = 5;
  print("Toplam: ${say1 + say2}");
}

int cikarma(int s1, int s2) {
  return s1 - s2;
}

// kısa gösterim
int carpim(int s1, int s2) => s1 * s2;

/* int buyuksayi(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
} */

//int buyuksayi(int x, int y) => (x > y) ? x : y;
/* 
int kucuksayi(int c, int d) {
  if (c < d) {
    return c;
  } else {
    return d;
  }
} */

int kucuksayi(int a, int b) => (a < b) ? a : b;
