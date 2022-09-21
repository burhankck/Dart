void main(List<String> args) {
/*
  int say1 = 13;
  int say2 = 11;

  if (say1 > say2) {
    print("$say1 sayısı  $say2 sayısından daha büyüktür");
  } else {
    print("$say1 sayısı $say2 sayısından daha küçüktür");
  }

  if (say1 < say2) {
    print("$say1 sayısı  $say2 sayısından daha küçüktür");
  } else if (say2 < say1) {
    print("$say2 sayısı  $say1 sayısından daha küçüktür");
  } else {
    print("Verdiğiniz sayılar birbirine eşittir");
  }
    */
  

  int notDegeri = 50;
  if (notDegeri >= 90 && notDegeri <= 100) {
    print("90 ile 100 arasında bir not aldınız.Harf notunuz AA");
  } else if (notDegeri >= 80 && notDegeri <90) {
    print("89 ile 70 arasında bir not aldınız.Harf notunuz BA");
  } else if (notDegeri >= 70 && notDegeri <80) {
    print("79 ile 70 arasında bir not aldınız.Harf notunuz BB");
  } else if (notDegeri >= 60 && notDegeri < 70) {
    print("69 ile 60 arasında bir not aldınız.Harf notunuz CB");
  } else if (notDegeri >= 50 && notDegeri < 60) {
    print("59 ile 50 arasında bir not aldınız.Harf notunuz CC");
  } else if (notDegeri >= 40 && notDegeri < 50) {
    print("49 ile 40 arasında bir not aldınız.Harf notunuz DC");
  } else if (notDegeri >= 30 && notDegeri < 40) {
    print("39 ile 30 arasında bir not aldınız.Harf notunuz DD");
  } else if (notDegeri >= 20 && notDegeri < 30) {
    print("29 ile 20 arasında bir not aldınız.Harf notunuz FD");
  } else if (notDegeri >= 10 && notDegeri < 20) {
    print("19 ile 10 arasında bir not aldınız.Harf notunuz FF");
  } else {
    print("0 ile 10 arasında bir not aldınız.Harf notunuz FF");
  }
}
