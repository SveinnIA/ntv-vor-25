import 'dart:io';

  class Contact {

  String name;
  int phoneNumber;
  String email;

  Contact({
  required this.name,
  required this.phoneNumber,
  required this.email });

  }

List contactList = [];



  void displayContacts(){
    for (String contact in contactList){
      print(contact);
    }
  }

void addContacts(){
  contactList.add(Contact);
}
void removeContacts(){

  print('Choose a contact to remove');
  int input = stdin.readByteSync();
  contactList.removeAt(input);
}

void controls(){
  int input = stdin.readByteSync();
  if (input == 1){
    addContacts();
  } else if (input == 2) {
    removeContacts();
  } else if (input == 3) {
    displayContacts();
  }
}
void main(){
    print('enter contact info');
    String name = stdin.readLineSync().toString();
    int phoneNumber = stdin.readByteSync();
    String email = stdin.readLineSync().toString();
Contact contact1 = Contact(name: name, phoneNumber: phoneNumber, email: email);
print(contact1);
addContacts();
}