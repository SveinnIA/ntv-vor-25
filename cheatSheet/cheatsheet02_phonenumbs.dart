import 'dart:io';

void main(List<String> arguments) {
  bool validNumber = false;
  while (validNumber == false) {
    print('Sláðu inn símanúmer');
    String phoneNumber = stdin.readLineSync().toString();
    print('Þú skrifaðir $phoneNumber');
    if (phoneNumber.contains('+354') == true) {
      phoneNumber = phoneNumber.replaceAll('+354', '');
    }
    if (phoneNumber.length != 7) {
      phoneNumber = phoneNumber.replaceAll('-', '');
      phoneNumber = phoneNumber.replaceAll(' ', '');
    }
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int) {
      if(phoneNumber[0] != '1' )
      print('Símanúmer $phoneNumber móttekið');
      validNumber = true;
    }
  }
}