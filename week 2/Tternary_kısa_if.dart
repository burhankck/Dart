void main(List<String> args) {
  int say1 = 7;
  var say2 = 5;
  int kucuksayi;
  /* if (say1 < say2) {
    kucuksayi = say1;
    else{
      kucuksayi= say2;

    } */
// if soru ısaretı ıle else ıse iki nokta ile görüntülenir.
  // say1 < say2 ? kucuksayi = say1 : kucuksayi = say2;
  kucuksayi = say1 < say2 ? say1 : say2;
  print("küçük sayı : $kucuksayi");

  // null degeri icin soru ısaretı koyun ki sorun cıkarmasın.
  String? ad = null;
  String? soyad = "koçak";
  String? mesaj;

  mesaj = ad ?? soyad;
  print("Merhaba $mesaj");
}
