//Crear una lista dinámica de 6 elementos, en la cual se recolectarán edades
//de personas. Como resultado el programa mostrará la edad mayor, menor y
//el promedio de edades ingresados. Datos aleatorios.

import 'dart:math';

double getSumAge(List<dynamic> list){
  double sum = 0;
  for (int i=0; i<list.length; i++){
    sum = sum + list[i];
  }
  return sum;
}

void main(){
  int max_age = 100;
  List<dynamic> Ages = [Random().nextInt(max_age), Random().nextInt(max_age), Random().nextInt(max_age),
                        Random().nextInt(max_age), Random().nextInt(max_age), Random().nextInt(max_age)];
  print(Ages);
  print("Promedio: ${getSumAge(Ages)/Ages.length}");
  Ages.sort();
  print("Máximo: ${Ages.last}");
  print("Mínimo: ${Ages.first}");
}
