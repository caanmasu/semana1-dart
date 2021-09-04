class Persona{
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);

  Persona.completo({this.nombre = "Andrés", this.apellido = "Suárez", this.edad = 24});
}

class Padre extends Persona{
  int hijos;

  //Padre({required this.hijos}):super("Camilo", "Martínez", 24);
  //Padre(this.hijos):super("Camilo", "Martínez", 24);
  Padre({required this.hijos}):super.completo();
}

abstract class Vehiculo{
  String? placa;

  void vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre{
  bool vehiculoEncendido() => true;
}

class Empleado implements Persona{
  @override
  String apellido;

  @override
  int edad;

  @override
  String nombre;

  Empleado(this.nombre, this.apellido, this.edad);
}

mixin Terrestre{
  int? llantas;
  int? kilometraje;

  tipoDeVehiculo(){
    return "Terrestre";
  }
}

mixin Acuatico{
  int? motores;

  tipoDeVehiculo(){
    return "Acuatico";
  }
}

class Lancha extends Vehiculo with Acuatico{
  bool vehiculoEncendido() => true;
}

void main(){
  var persona = Persona("Camilo", "Martínez", 24);
  var elPadre = Padre(hijos: 5);
  //var elPadre = Padre(5);

  var vehiculoTaxi = Taxi();
  vehiculoTaxi.llantas = 4;


  var laLancha = Lancha();
  laLancha.motores = 2;

  print(persona);
  print(persona.nombre);
  print(elPadre);
  print(elPadre.nombre);
  print(vehiculoTaxi.tipoDeVehiculo());
  print(laLancha.tipoDeVehiculo());
  print(laLancha.motores);
}