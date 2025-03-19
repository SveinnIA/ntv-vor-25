import 'dart:io';

void main() {
  ContactManager contactManager = ContactManager();

  while (true) {
    print('\n1. Add Contact');
    print('\n2. View contacts');
    print('\n3. Remove contacts');
    print('\n4. Exit');
    print('Select an option');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('Enter name');
        String? name = stdin.readLineSync();
        print('Enter Phone number');
        String? phoneNumber = stdin.readLineSync();
        print('Enter emailAddress');
        String? emailAddress = stdin.readLineSync();
        Contact contactToAdd = Contact(name!, phoneNumber!, emailAddress!);
        contactManager.addContact(contactToAdd);
        break;
      case '2':
        contactManager.displayContacts();
        break;
      case '3':
        print('Enter the name of contact to delete');
        String? nameToDelete = stdin.readLineSync();
        contactManager.deleteContactByName(nameToDelete!);
        break;
      case 'exit':
        print('Exiting');
        return;
      default:
        print('Invalid option, try again');
    }
  }
}

class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(
    this.name,
    this.phoneNumber,
    this.email );

}

class ContactManager {
  List<Contact> contacts = [];

  void displayContacts(){
    if (contacts.isEmpty){
      print('No contacts');
      return;
    }
    print('Contacts');
    for(Contact contact in contacts){
      print('${contact.name},${contact.phoneNumber},${contact.email}');
    }
  }

  void addContact(Contact contact){
    contacts.add(contact);
  }

  void deleteContactByName(String name){
    Contact contactToRemove = contacts.firstWhere(
            (contact)=>
      contact.name.toLowerCase() == name.toLowerCase(),
      orElse: ()=> Contact('', '', '')
    );

    if(contactToRemove != null){
      contacts.remove(contactToRemove);
      print('Contact deleted: ${contactToRemove.name}');
    }

  }


}
