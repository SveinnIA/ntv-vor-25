import 'dart:io';

void main(){
  //GRADING
  print('======= GRADING PROGRAM =======');
  stdout.write('Pick a number between 1-100\n');
  String? input = stdin.readLineSync();
  int score = int.parse(input!);
  if (score < 1 || score > 100 ){
    print('Invalid input, please enter a number between 1 and 100');
  }else{
    if (score >= 90){
      print('Grade: A');
    } else if (score  >= 80){
      print('Grade: B');
    } else if (score >=70){
      print('Grade: C');
    } else if (score >= 60){
      print('Grade: D');
    } else{
      print('Grade: F');
    }
  }
}