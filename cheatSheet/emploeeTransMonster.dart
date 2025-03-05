import 'dart:math';

import 'package:ntv_vor_25/methods.dart';

void main(){
  company Bonus = company(id: 1,
      name: 'Bónus',
      domainURL: 'bonus.is',
      type: 'Supermarket');
  company Kronan = company(id: 2,
      name: 'Bónus',
      domainURL: 'kronan.is',
      type: 'Supermarket');
  company Steypustodin = company(id: 3,
      name: 'Steypustöðin',
      domainURL: 'steypustodin.is',
      type: 'Supermarket');

  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);
List<String> employees = getNamesList();
List<employee> employeesTransformed = [];
for (String employeeName in employees){
  String username =  createUserName(employeeName);
  var random = Random();
  int randomCompany = random.nextInt(3);
  int randomAge = random.nextInt(45);
  int age = randomAge + 20;
  company tempCompany = myCompanyList[randomCompany];
  employee newEmployee = employee(
      name: employeeName,
      age: age,
      username: username,
      employer: tempCompany
  );
  employeesTransformed.add(newEmployee);
  for (employee e in employeesTransformed) {
    if(e.employer.id == 1){
      print(e.name);
      print(e.age);
      print(e.username);
      print(e.employer.name);
      print(e.employer.type);
      print('______________');
    }
  }
}
}
class employee {
String name ;
int age ;
String username;
company employer;

employee({required this.name,required this.age,required this.username, required this.employer});
}
class company{
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name,
    required this.domainURL, required this.type,});
}

String createUserName(String tempName){
  List splitName = tempName.split(' ');
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName + lastName.substring(0,3);
  username = username.toLowerCase();
  username = removeIcelandicLetters('');
  return username;
}
String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };
  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}