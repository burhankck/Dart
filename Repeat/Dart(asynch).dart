void main(List<String> args) async {
  print('xx');
  // 5 saniye bekle sonra gel hic bir musterı alma

  // Future.forEach([1, 2, 3, 4], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });
  // await  Future.delayed(Duration(seconds: 3));
  print('xy');

  print('hello 1');
  Future.delayed(Duration(seconds: 0)).whenComplete( () { 
    print('hello 2');
  });
  print('hello 3');
      Future.delayed(Duration(seconds: 0)).whenComplete( () { 
    print('hello 4');
  });
}
// Burayi hello1, hello2, hello3, hello4 olarak mı yazdiracak ? 
//EventLoop yapisi gereginde ana islemler biter sonra diger islemeler baslar



// bir servise cevap sonradan gelecek 
// matematik zaman alacak

