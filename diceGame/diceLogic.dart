import 'dart:io';
import 'dart:math';


class DiceGame {
void rollDice(DicePlayer player){
  Dice dice1 = Dice(6);
  Dice dice2 = Dice(6);
  dice1.rollDice();
  dice2.rollDice();
  player.score += dice1.diceRoll + dice2.diceRoll;
  player.throws++;
}
void showScore(DicePlayer player){
  print('Total score: ${player.score} after ${player.throws} throws of the die');
}
}

class Dice {
  int sides;
  late int diceRoll;
  Dice(this.sides);

  void rollDice() {
    diceRoll = Random().nextInt(sides) + 1;
    print('Rolled: $diceRoll');
}
}

class DicePlayer {
  String name;
  int score;
  int throws;
DicePlayer(this.name, this.score, this.throws);
}