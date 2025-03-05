void main(){
// Create a list
List Bilategundir = ['Audi','Bentley','BMW','Fiat','Kia','Toyota'];
// Change an element
Bilategundir[3] = 'Ferrari';
// add to a list
  Bilategundir.add('Honda');
// add many to a list
  Bilategundir.addAll(['Polestar','Hyundai']);
// create an empty list
  List Kia = [];
// insert at a specific index
  Bilategundir.insert(3, 'Ford');
// insert many at a specific index
  Bilategundir.insertAll(5, ['Tesla','Skoda']);
// remove from a list
  Bilategundir.remove('Tesla');
// remove at an index
  Bilategundir.removeAt(5);
// *BONUS* find an element's position and remove at that index
  print(Bilategundir.indexOf('Hyundai'));
Bilategundir.removeAt(9);
// Sort
  Bilategundir.sort();
// Remove between 2 indexes
  Bilategundir.removeRange(0, 4);
// Remove last item
  Bilategundir.removeLast();
print(Bilategundir);
print(Kia);
}