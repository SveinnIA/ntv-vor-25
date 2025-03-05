import 'dart:io';

void main() {
  // Write a loop that prompts the user to enter a series of pizza toppings until
  // they enter a 'quit value'. As they enter each topping, print a message saying
  // you'll add that topping to their pizza.
  List toppings = ['Pepperoni', 'Skinka', 'Jalapeno', 'Hakk', 'Beikon'];
  print(toppings);
  print('Velkomin, veljið álegg úr listanum, skrifið OK þegar þið eruð búin.');
  String topping = stdin.readLineSync().toString();
  while (topping.toLowerCase() != 'ok'){
  if (topping == toppings) {
    print('$topping hefur verið bætt við');
  }

  }
  // Use a for loop to print out each letter in the word 'NTV'

  // You are given a list of pizzas: ['pepperoni', 'Hawaiian", "Cheese","Margherita"]
  // use a for loop to print out each name of the pizza

  //modify your program to print a statement about each pizza
  //modify your program to print a statement about each pizza e.g. "i love eating hawaiian pizza"
  // Add a line at the end of your program stating that "All pizza is great"
}