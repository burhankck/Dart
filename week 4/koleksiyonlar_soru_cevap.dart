void main(List<String> args) {
  List<String> sehirler = ['Ankara', 'İstanbul', 'Bursa', 'İzmir'];
  print(sehirler);

  List<String> sehirler2 = List.filled(4, '');
  sehirler2[0] = 'Bursa';
  sehirler2[1] = 'Ankara';
  sehirler2[2] = 'İstanbul';
  sehirler2[3] = 'İzmir';

  for (int i = 0; i < sehirler2.length; i++) {
    print(sehirler2[i]);
  }
  print("Bilgisayar Bilgileri");
  Map<String, dynamic> bilgi = {};
  bilgi['cekirdek_sayisi'] = 16;
  bilgi['ram_miktari'] = 8;
  bilgi['ssd_var_mi'] = true;

  for (var oankiEntry in bilgi.entries) {
    print(" ${oankiEntry.key} : ${oankiEntry.value}");
  }

  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 15;
  eklenecekSehir1['plaka_kodu'] = 06;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['il_adi'] = 'antalya';
  eklenecekSehir2['ilce_sayisi'] = 10;
  eklenecekSehir2['plaka_kodu'] = 07;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'istanbul';
  eklenecekSehir3['ilce_sayisi'] = '20';
  eklenecekSehir3['plaka_kodu'] = '34';

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({
    'il_adi': 'izmir',
    'ilce_sayisi': 9,
    'plaka_kodu': 35,
  });
  print(iller[0]['il_adi']);
  print(iller[2]['ilce_sayisi']);

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}. elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']} ilce sayisi : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu : ${oankiSehirMapYapisi['plaka_kodu']}");
  }
}
