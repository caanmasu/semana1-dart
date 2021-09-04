void main(){
  int edadInt = 23;
  double puntosDouble = 10.2;

  var edadVar = 48;
  num edadNum = puntosDouble;

  print(edadNum);

  //String

  var texto1 = 'Valor con comillas simples';
  var texto2 = "Valor con comillas dobles";
  var texto3 = "Comillas simples dentro ' no hay problema";
  var texto4 = 'Escapando \' estas comillas simples';
  var texto5 = "El resultado de sumar 3+3 es ${3+3}";
  var texto6 = "concat1" + " concat2";
  var texto7 = "Esta es otra" " concatenación";
  var texto8 = "Y esta es otra" ' concatenación';
  var variableTipoNumero = 10;
  var texto9 = "El valor de variableTipoNumero es $variableTipoNumero e interpolar texto7: \'$texto7\'";

  var texto10 = r'Mostrar este caracter\';

  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  print(texto8);
  print(texto9);
  print(texto10);

  String texto12 = '';
  if (texto12.isEmpty){
    print("texto12 está vacío");
  }

  var lista1 = ['Mazda', 'Kia', 'Renault'];
  List<String> lista2 = ['Mazda', 'Kia', 'Renault'];

  var lista3 = ["Chevrolet",...lista1];
  lista3.add("BMW");
  var lista4;
  List<String>? lista6 = null;
  var lista5 = [...lista3,...?lista6,...?lista4];

  var listaSet = {'Mazda', 'Kia', 'Renault'}; //set = lista con valores únicos
  listaSet.add("Mazda2");
  listaSet.add("Kia");
  listaSet.clear();

  List<dynamic> lista10 = [1, 2.0, "Hola", true];

  print(lista1);
  print(lista2);
  print(lista2.last);
  print(lista2.reversed);
  print(lista3);
  print(lista5);
  print(listaSet);
  print(lista10);

  var maps1 = {
    'red':'rojo',
    'blue':'azul'
  };
  //maps1.clear();
  maps1['green'] = 'verde';

  print(maps1);
  print(maps1.length);

  maps1.forEach((key, value) {
    print(key);
    print(value);
  });
  print("/////////////");
  maps1.forEach((key, value) => print(key) );
}