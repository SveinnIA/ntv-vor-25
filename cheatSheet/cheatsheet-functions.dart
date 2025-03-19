import 'dart:io';

void main(){
  // Hvað er function?

  void printMyNameAndJob(String name, String job){
    print('Ég heiti $name og er $job');
  }
  printMyNameAndJob('Jón', 'Kennari');
  printMyNameAndJob('Andri', 'Nemandi');

  // Increment
  int increment(int num1, int num2){
    return num1 + num2;
  }

  int sum = increment(5, 5);
  print(sum);
  // Decrement
int decrement(int num1, int num2){
  return num1 - num2;
}

int decrementSum = decrement(20, 10);
print(decrementSum);

print('Type a number');
String? input1 = stdin.readLineSync()!;
print('Type a second number');
String? input2 = stdin.readLineSync()!;

int inputSum = increment(int.parse(input1), int.parse(input2));
print(inputSum);

  // How long til I'm 50
print('enter your age');
String? input = stdin.readLineSync();

  int howLongTil50(String age){
    int yearsTil50 = int.parse(age);
    return 50 - yearsTil50;
  }
  int years = howLongTil50(input!);
  print('in $years years you will turn 50');

  // Void skilar engu
  // int ef við viljum skila tölu
  // String ef við viljum skila streng

  //positional arguments vs named arguments

  //named
  void namedPrintNameAndAge({String? name, int? age}){
    print('My name is $name and I am $age years old');
  }
  //positional
  void positionalPrintNameAndAge(String name, int age){
    print('My name is $name and I am $age years old');
  }
  namedPrintNameAndAge(age: 25, name: 'Sveinn');
  positionalPrintNameAndAge('Sveinn', 25);
}