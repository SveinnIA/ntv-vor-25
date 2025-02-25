

import 'dart:io';
import 'dart:math';

void main() {
  int secretNumber = Random().nextInt(100) + 1;
  print('$secretNumber');
  bool secret = true;
  while (secret) {
    print('Guess a number between 1-100');
    String? input = stdin.readLineSync();
    int inputNumber = int.parse(input!);

    if (inputNumber == secretNumber) {
      print('That is correct');
      secret = false;
      print('Want to go again? Type Yes to retry');
      String retry = stdin.readLineSync().toString();
      if (retry.toLowerCase() == 'yes') {
        secret = true;
      }
    } else {
      print('That is incorrect');
  }
    if (inputNumber < secretNumber){
      print('Try a higher number');
    }
    if (inputNumber > secretNumber){
      print('Try a lower number');
    }
  }
}