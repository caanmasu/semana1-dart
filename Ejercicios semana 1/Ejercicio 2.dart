//Validar si una cadena es un palíndromo o no

bool esPalindromo(String text){
  return text.toLowerCase().split('').reversed.join() == text.toLowerCase(); //La cadena la separo en una lista letra por letra, hago reversa la lista y luego uno la lista de nuevo como un String. Después comparo ambas palabras en minúscula.
}
void main(){
  String cadena = "Reconocer";
  print("$cadena ${esPalindromo(cadena) ? "sí" : "no"} es palíndromo");
}
//output: Reconocer sí es palíndromo