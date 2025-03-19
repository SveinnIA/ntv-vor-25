
// CLASSES

import 'dart:io';

class Person {

  String name;
  int age;
  String? gender;
  String enemy;

  Person({required this.name,required this.age, this.gender = 'male', this.enemy = 'Gunnar'});

  void introduce(){
    if(this.gender == ''){
      this.gender = 'unknown';
    }
    print('Hi, I am $name and I am a $age years old $gender');
  }
void curseEnemy(){
    print('Damn you $enemy');
}

}

class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand,this.year);

  void displayInfo(){
    print('$brand - $year');
  }

}

class Car extends Vehicle{
  int door;
  String type;
  int mileage;

  Car({required this.door,
    required this.type,
    required this.mileage,
  required String brand,
  required int year}) : super(brand,year);

  void showMoreInfo(){
    print('Doors: $door - Type: $type - Mileage - $mileage');
}

}

void main(){

  Car car1 = Car(door: 5, type: 'Avensis', mileage: 120000, brand: 'Toyota', year: 1991);

  car1.displayInfo();
  car1.showMoreInfo();
  print('Enter your name please');
  String? name = stdin.readLineSync();

  print('Enter your age please');
  int? age = int.parse(stdin.readLineSync()!);

  print('Enter your gender please *optional*');
  String? gender = validateInput(stdin.readLineSync()!);

  print('Who is your enemy?');
  String? enemy = stdin.readLineSync();
  Person user = Person(name: name!, age: age, gender: gender!, enemy: enemy!);
user.introduce();
user.curseEnemy();
 /* Person person1 = Person(name: 'Jón', age: 25, gender: 'male');
  Person person2 = Person(name: 'Andri', age: 24, gender: 'male');

 person1.introduce();
 person2.introduce();
*/
}

String? validateInput(String? input){
  if(input == null || input.trim().isEmpty){
    print('Input cannot be empty or whitespace');
    return 'Invalid';
  }
}