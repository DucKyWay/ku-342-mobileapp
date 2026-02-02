import 'dart:io';

void main() {
  method1();
  method2();
  method3();
}

void method1() {
  print("method 1 complete");
}

void method2() {
  Duration sec = const Duration(seconds: 2);
  sleep(sec);
  print("method 2 complete");
}

void method3() {
  print("method 3 complete");
}
