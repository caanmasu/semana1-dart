//Validar si una cadena es un palíndromo o no

bool esPalindromo(String text){
  return text.toLowerCase().split(' ').join().split('').reversed.join() == text.toLowerCase().split(' ').join().split('').join(); //La cadena la separo en una lista letra por letra, hago reversa la lista y luego uno la lista de nuevo como un String. Después comparo ambas palabras en minúscula.
} //Cuando es una frase le quito los espacios
void main(){
  String cadena = "Anita lava la tina";
  print("$cadena ${esPalindromo(cadena) ? "sí" : "no"} es palíndromo");
}
//output: Anita lava la tina sí es palíndromo