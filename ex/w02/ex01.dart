import 'dart:io';

void main() {

  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Your age: $age");
}