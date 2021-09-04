String obtenerNombre(String valor){
  return 'valor función $valor';
}

String obtenerNombreFuncionFlecha(String valor) => 'valor función $valor';

String obtenerFuncionNameParameter({String? valor, String valor2 = 'Andrés', required String valor3}){
  return 'valor función $valor, $valor2, $valor3';
}

funcionConParametrosOpcionales(String valor1, [int? valor2]){
  return valor1;
}

void main(){

  var miFuncionAnonima = (String valor){
    return valor;
  };

  print(obtenerNombre("Camilo"));
  print(obtenerNombreFuncionFlecha("Camilo"));
  print(obtenerFuncionNameParameter(valor2: 'Juan', valor: 'Sofía', valor3: 'Test'));
  print(funcionConParametrosOpcionales("Valor"));

  print(miFuncionAnonima("Hola"));
}