import 'dart:math';

Future<int> randomNumber() async {
  await Future.delayed(Duration(seconds: 2));

  int number = Random().nextInt(4);

  if (number == 0) {
    throw 'Error you have got 0';
  }

  return number;
}

void main() async {
  print('Start');

  try {
    int result = await randomNumber();
    print(result);
  } catch (e) {
    print(e);
  }

  print('End');
}
