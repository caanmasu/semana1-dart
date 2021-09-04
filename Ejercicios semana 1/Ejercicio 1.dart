//**
//Tome dos listas, por ejemplo:
//a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//y escriba un programa que devuelva una lista que contenga solo los
//elementos que son comunes entre ellos (sin duplicados). Asegúrese de que
//su programa funcione en dos listas de diferentes tamaños.
// */

void main(){
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  print(a.toSet().intersection(b.toSet())); //convierto cada lista en una colección set para quitarles los elementos repetidos. Luego busco los elementos en común con intersection.
}

//output: {1, 2, 3, 5, 8, 13}