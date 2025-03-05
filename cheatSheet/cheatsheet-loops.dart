void main(){

  //for loop
  for(int i = 1; i <= 10; i++){
    print(i);
  }
  for(int j = 10; j >= 1; j--) {
print(j);
  }
  //for in
  List animals = ['Lion', 'Pig', 'Cow','Hjalti'];
  for(String animal in animals){
    print(animal);
    print(animals);
  }
  //while
  int numb = 5;
  while(numb > 0){
    numb--;
    print(numb);
  }

  //do while
  do{
    numb--;
    print(numb);
  }
  while(numb > 0);
  /*?Take a list and write a program that prints out
   all the elements of the list that are less than 5*/
  List numbs =[1,2,3,4,5,6,7,8,32,234,4324];

        }