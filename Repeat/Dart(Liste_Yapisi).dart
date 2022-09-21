// bir bankaya 10 musterı gelır bunların 100 tlsi 110 tlsi 50 tlsi vardır

void main() {
  final int money1 = 100;
  final int money2 = 110;

  // 100'den buyuk olanlara hosgeldınız beyfendi
  if (money1 > 100) {
    print("Hosgeldiniz Beyfendi");
  }
  if (money2 > 100) {
    print("Merhaba");
  }
  String name = "";

  List<int> moneys = [100, 110, 500, 200, 300];

  print('musteri 1 parasi : ${moneys[0]}');

  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 300);
  print(moneys);

// 100 tane musterı yap bunların hepsine sira ile numarasina göre 5 tl ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // customers 100 30 40 60
  // 35 tl den buyuk olanları burada kredi verebiliriz yaz
  // kucuk olanlara by yaz
  List<int> moneyCustomersNew = [100, 30, 40, 60];
  moneyCustomersNew.sort();
  for (int i = 0; i < moneyCustomersNew.length; i += 1) {
    print('Musteri parasi ${moneyCustomersNew[i]}');
    if (moneyCustomersNew[i] > 35) {
      print('Kredi hazır');
    } else if (moneyCustomersNew[i] > 0) {
      print("Kredi veremeyiz ama bir bakalım");
    } else {
      print('byy');
    }
  }
  print("------");
  for (int i = moneyCustomersNew.length - 1; i >= 0; i += -1) {
    print('Musteri parasi ${moneyCustomersNew[i]}');
    if (moneyCustomersNew[i] > 35) {
      print('Kredi hazır');
    } else if (moneyCustomersNew[i] > 0) {
      print("Kredi veremeyiz ama bir bakalım");
    } else {
      print('byy');
    }
  }
}
