import 'dart:io';
import 'dart:math';

void main() {

  int answer = Random().nextInt(100) + 1;
  int round = 0;
  int? guess;

  while(guess != answer) {

    stdout.write("Guess your number: ");
    guess = int.parse(stdin.readLineSync()!);
    round++;

    if(guess > answer) {
      print("Number ${guess} is too high.");
    } else if(guess < answer) {
      print("Number ${guess} is too low.");
    } else {
      print("Congrat! answer is $answer you guess $round times.");
    }
  }
}