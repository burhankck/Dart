void main(List<String> args) {
  String? userName = "a";

  if (userName.length > 2) {
    print('xx');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'user name null girmissin bunu duzelt';
 }
}
