void main(List<String> args) {
  int sayi = 5;
  var sayi2 = 10;
Ogrenci burhan = Ogrenci();
burhan.ogrAd= "Burhan Koçak";
burhan.ogrNo =183;
burhan.aktifMi =true;
Ogrenci dogukan = Ogrenci();
dogukan.ogrAd ="Dogukan Tayan";
dogukan.ogrNo = 182;
dogukan.aktifMi =true;

}


class Ogrenci {
  // instance veriables
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  void dersCalis(){
    print("Öğrenci ders calısıyor");
  }

}
