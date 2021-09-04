String obtenerNombre({required String valor}){
  if (valor == 'Camilo'){
    throw FormatException("El nombre de $valor no puede ser procesado");
  }

  if (valor == 'Andrés'){
    throw("El nombre de $valor no puede ser procesado");
  }

  return valor;
}

void main(){
  try{
    String resultado = obtenerNombre(valor: 'Andrés');
    print(resultado);
  } on FormatException catch (e){
    print("format exception");
    print(e);
  }
}