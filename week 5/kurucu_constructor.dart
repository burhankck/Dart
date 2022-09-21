void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  /* honda.marka = "Honda";
  honda.modelYili = 2022;
  honda.otomatikMi = true; */
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();

  var reno = Araba(2016, "Reno", false);
  reno.bilgileriSoyle();

  var bmw = Araba(2014, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMethod(true, 2015);
  Araba opel = Araba.modelYiliOlmayanKurucuMethod(false, "Astra");
  opel.bilgileriSoyle();
  opel.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /*  // kurucu method
  Araba() {
    print("Kurucu metot tetiklendi");
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu method tetiklendi.");
  }

  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili);
  Araba.modelYiliOlmayanKurucuMethod(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  /* Araba(int modelYili, String marka, bool otomatikMi) {
    print("Kurucu metot tetiklendi");
    this. modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
    // this. karışmaması için.

  } */

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı ${modelYili}, markası : ${marka}, otomatik mi ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null) print("Arabanın yaşı ${2021 - modelYili!}");
    else
    print("Model yılı olmadıgından yaş hesaplanmadı");
  }
}
