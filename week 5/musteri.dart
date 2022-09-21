class Musteri {
  int? _musteriNo;

  /* Musteri(int musteriNo) {
    this.musteriNo = musteriNo;
  } */

  //Musteri(this._musteriNo);

  Musteri(int musteriNo) {
    musteriNoKontrol(musteriNo);
  }

  String get musteriNoSoyle2 => "Musteri no : $_musteriNo";

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  String get musterinoSoyle {
    return "Musteri no : $_musteriNo";
  }

  void bilgileriYazdir() {
    print("Musteri olusturuldu  musteri no : $_musteriNo");
  }
}
