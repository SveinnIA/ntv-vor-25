import 'dart:math';

class fact {
  footballTeam team;
  footballPlayer player;
  String action;

  fact ({required this.team, required this.player, required this.action});
}
class footballGame {
  footballTeam homeTeam;
  footballTeam awayTeam;
  int homeTeamScore;
  int awayTeamScore;
  int time;
  List<fact> matchFacts =[];

  footballGame({
    required this.homeTeam,
    required this.awayTeam,
    this. homeTeamScore = 0,
    this. awayTeamScore = 0,
    this.time = 0
  });
void printMatchFacts() {
  print('======= MATCH SUMMARY ======');
  for(fact matchFact in this.matchFacts){
    print('${matchFact.team.name} - ${matchFact.player.getName()} ${matchFact.action}');
}

  print("=====================");
}
  void playGame(int minute) {
    this.time = minute;
    Random r1 = new Random();
    int randomNumber1 = r1.nextInt(11);
    int randomNumber2 = r1.nextInt(11);
    int randomNumber3 = r1.nextInt(10);
    if(randomNumber1 == randomNumber2) {
      print('Það var mark!');
      if (randomNumber1 >= 6){
        print(
          "${this.homeTeam.players[randomNumber3 + 1].getName()} er kominn í færi",
        );
        if (didHeScore(this.homeTeam.players[randomNumber3 + 1])) {
          print("Og hann skorar!");
          fact tempfact = fact(team: this.homeTeam,
              player: this.homeTeam.players[randomNumber3 + 1],
              action: "skoraði mark");
          this.matchFacts.add(tempfact);
          this.homeTeamScore++;
        } else {
          print("Hann klúðraði!");
          fact tempfact = fact(team: this.homeTeam,
              player: this.homeTeam.players[randomNumber3 + 1],
              action: "klúðraði færi");
          this.matchFacts.add(tempfact);
        }
      } else {
        print ("${this.awayTeam.players[randomNumber3+1].getName()} er kominn í færi");
        if(didHeScore(this.awayTeam.players[randomNumber3+1]))
        {
          print("Og hann skorar!");
          fact tempfact = fact(team: this.awayTeam,
              player: this.awayTeam.players[randomNumber3 + 1],
              action: "skoraði mark");
          this.awayTeamScore++;
          this.matchFacts.add(tempfact);
        } else {
          fact tempfact = fact(team: this.awayTeam,
              player: this.awayTeam.players[randomNumber3 + 1],
              action: "klúðraði færi");
          print("Hann klúðraði!");
          this.matchFacts.add(tempfact);
        }
      }
      print('${minute}: ${homeTeam.name} ${homeTeamScore} - ${awayTeam.name} ${awayTeamScore}');
      }
    }
  }


class footballTeam {
  String name;
  String league;
  String country;
  List<footballPlayer> players;
  footballTeam({required this.name, required this.league,
  required this.country, required this.players});

  void showTeam() {
    print('The ${this.name} line up');
    this.players.forEach((player){
      print('${player.position} - ${player.getName()}');
    });
  }
}

class footballPlayer {
  int squadNumber;
  String firstName;
  String lastName;
  String position;
  footballPlayer({required this.squadNumber, required this.firstName,
  required this.lastName, required this.position});

  String getName(){
    return '${firstName.substring(0,1)}. ${lastName}';
  }
  }
  bool didHeScore(footballPlayer p1) {
    bool result = false;
    Random random1 = new Random(10);
    int odd = random1.nextInt(10);
    int scoreOdds = 0;
    if(p1.position == 'Goalkeeper') {
      scoreOdds = 1;
    } else if(p1.position == 'Defender'){
      scoreOdds = 3;
    } else if(p1.position == 'Midfielder') {
      scoreOdds = 7;
    } else if(p1.position == 'Forward'){
      scoreOdds = 9;
      if (p1.lastName == "Núñez"){
        scoreOdds = 3;
      }
    }
    if(scoreOdds >= odd){
      result = true;
    }
    return result;
}