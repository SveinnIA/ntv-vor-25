import 'dart:io';
import 'dart:math';
import 'diceLogic.dart';

void main() {
  print('Welcome, enter player name');
  String userName = stdin.readLineSync().toString();
  DicePlayer player = DicePlayer(userName, 0, 0);
  print('Player 2, enter player name');
  String userName2 = stdin.readLineSync().toString();
  DicePlayer player2 = DicePlayer(userName2, 0, 0);
  DiceGame game = DiceGame();

  while (true) {
    print('\n ${player
        .name}, your turn, enter "throw" to play  or "concede" to end game');
    String userInput = stdin.readLineSync().toString().toLowerCase();
    if (userInput == 'throw') {
      game.rollDice(player);
      game.showScore(player);
    } else if (userInput == 'concede') {
      print('GG, final score: \n ${player.name}: ${player.score}'
          '\n ${player2.name}: ${player2.score}'
          '\n ${player.name} has conceded and lost the game regardless of score');
      break;
    } else {
      print('Invalid input, try again');
    }

    print('\n ${player2
        .name}, your turn, enter "throw" to play  or "concede" to end game');
    String userInput2 = stdin.readLineSync().toString().toLowerCase();
    if (userInput2 == 'throw') {
      game.rollDice(player2);
      game.showScore(player2);
    } else if (userInput2 == 'concede') {
      print('GG, final score: \n ${player.name}: ${player.score}'
          '\n ${player2.name}: ${player2.score}'
          '\n ${player2.name} has conceded and lost the game regardless of score');
      break;
    } else {
      print('Invalid input, try again');
    }

    if (player.throws >= 3 && player2.throws >= 3) {
      print('Game over');
      print('Final Score for ${player.name} is ${player.score}');
      print('Final score for ${player2.name} is ${player2.score}');
      if (player.score > player2.score) {
        print('${player.name} wins!');
      } else if (player2.score > player.score) {
        print('${player2.name} wins!');
      } else {
        print('It\'s a draw!');
      }
      break;
    }
  }
}