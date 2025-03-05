void main(){
  List names = ['Alexander','Bjarki','Egill','Zhivko'];
  for(String vinur in names) {
    print(vinur);
  }
  for(String vinur in names){
    print('$vinur er vinur minn');
  }
  List shoppingList = ['Mjólk','Hakk','Hrísgrjón','Grænmeti','Pasta'];
  print('Shopping List');
  for(int i = 0; i < shoppingList.length; i++){
    print('${i+1} - ${shoppingList[i]}');
  }
String discontinued = 'Mjólk';
  print('${discontinued} is not in stock');
  shoppingList[0] = 'Brauð';
  print('Updated shoppingList');
  for(String updatedItem in shoppingList){
    print(updatedItem);
  }
  print(shoppingList.indexOf('Pasta'));

  print('We are adding party items to the list');
  List partyList = ['Blöðrur','Confetti','Áfengi'];
  print(shoppingList);
  shoppingList.insert(0,'Spil');
  print(shoppingList);
  shoppingList.insert(3,'Matur');
  print(shoppingList);
  shoppingList.add('Karaoke tæki');
  print(shoppingList);
 shoppingList.removeAt(4);
 print(shoppingList);
}