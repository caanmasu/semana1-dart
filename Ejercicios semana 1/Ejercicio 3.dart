//**
//Por ejemplo tiene una lista guardada en una variable:
//a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
//Escriba un código de Dart que tome esta lista y cree una nueva lista que contenga
//solo los elementos pares de esta lista
// */

void main(){
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(List.from(a.where((element) => (element%2) == 0)));
}
//output: [4, 16, 36, 64, 100]