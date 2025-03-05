import 'dart:io';

void main() {
  List menu = [
    'Classic Burger - 2000 kr',
    'Cheeseburger - 1800 kr',
    'Veggie Burger - 2200 kr',
    'Bacon Burger - 2500 kr'
  ];
  print('Welcome to Buns and Roses');
  print('Take a look at our menu');
  print('===== MENU =====');
  for (int i = 0; i < menu.length; i++) {
    print('${i + 1} . ${menu[i]}');
  }
  List orderList = [];
  List prices = [2000,1800,2200,2500];
  num sum = 0;
  print('Please choose a burger by entering its corresponding number and enter 0 to finish');
while (true){
  String? userOrder =stdin.readLineSync();
  int inputOrder = int.tryParse(userOrder ?? '')?? -1;
  if(inputOrder == 0){
    break;
  }
  if(inputOrder > 0 && inputOrder <= menu.length){
    orderList.add(menu[inputOrder - 1]);
    sum += prices[inputOrder - 1];
    print('${menu[inputOrder-1]} has been added to your order');
    for(int i = 0; i < orderList.length; i++) {
      print('${i + 1} . ${menu[i]}');
    }
    print('Total cost: ${sum.toString()}');
  } else{
    print('Invalid input, try again');
}
}
  print('Are you happy with your order? To remove a burger , enter its corresponding number, else enter 0 to finish');
  while (true){
    String? adjustOrder = stdin.readLineSync();
    int newOrder = int.tryParse(adjustOrder ?? '')?? -1;
    if(newOrder == 0){
      break;
    }
    if(newOrder > 0 && newOrder <= orderList.length){
      orderList.removeAt(newOrder-1);
      sum -= prices[newOrder -1];
      print('${menu[newOrder-1]} has been removed from your order');
      for(int i = 0; i < orderList.length; i++){
        print('${i + 1}.${orderList[i]}');
      }
    }
  }
if (orderList.isNotEmpty){
  print('Your completed order');
  for(String order in orderList){
    print(order);
  }
  print('Total cost: ${sum.toString()}');
} else {
  print('Your order is empty');
}
}
