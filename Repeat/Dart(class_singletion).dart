void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney();
}

void calculateMoney() {
  if (Product.money > 5) {
    print('5 tl daha ekledik');
    Product.money;
    Product.incerementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 10;
  static void incerementMoney(int newMoney) {
    money += newMoney;
  }
}

// Cok dogru bir kullanım degildir. 
// Product herkesin erişmesini herkesin ulaşmasını sağlıyoruz. 

