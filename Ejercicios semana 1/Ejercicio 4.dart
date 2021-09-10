//**
//Realizar un programa que implemente herencia y mixin del siguiente
//diagrama. Los resultados por consola deben evidenciar el uso de extend y
//mixin.
//Cada clase debe tener mínimo un método y tres atributos.
// */

//**
//                                 --------------
//                                 |   Persona  |
//                                 --------------
//                                        |
//        -------------------------------------------------------------------
//        |                     |                     |                     |
//  -------------       ---------------       ---------------       ----------------
//  |  Artista  |       |  Ingeniero  |       |    Doctor   |       |     Atleta   |
//  -------------       ---------------       ---------------       ----------------
//  | Dibujar   |       | Dibujar     |       | Leer        |               |
//                      | Leer        |       | Ejercitarse |       ----------------
//                                                                  |    Boxeador  |
//                                                                  ----------------
//                                                                  | Ejercitarse  |
//                                                                  | Boxear       |
//
// */

abstract class Persona{
  final String nombre;
  final int edad;
  final bool sexo; //true = masculino, false = femenino

  void Describirse();

  Persona(this.nombre, this.edad, this.sexo);
}

class Artista extends Persona with Dibujar{
  final String tipo_de_arte;
  final int? nivel_artistico; //del 1 al 10
  final bool? independiente;

  @override void Describirse() => print("Soy muy comprometido con mi trabajo");

  void prepararObra() => print("Alistando los materiales...");

  Artista({
    String? nombre,
    int? edad,
    bool? sexo,
    required this.tipo_de_arte, 
    this.nivel_artistico, 
    this.independiente
  }):super(
    nombre!,
    edad!,
    sexo!);
}

class Ingeniero extends Persona with Dibujar, Leer{
  final String tipo_de_ingenieria;
  final int? calificacion_internacional; //del 1 al 10
  final bool? tiene_equipo;

  @override void Describirse() => print("Soy muy perfeccionista haciendo las cosas");

  void prepararProyecto() => print("Pleaneando el nuevo proyecto...");

  Ingeniero({
    String? nombre,
    int? edad,
    bool? sexo,
    required this.tipo_de_ingenieria, 
    this.calificacion_internacional, 
    this.tiene_equipo
  }):super(
    nombre!,
    edad!,
    sexo!);
}

class Doctor extends Persona with Leer, Ejercitarse{
  final String especializacion;
  final int? pacientes_tratados; //del 1 al 10
  final bool? servicio; //true: público, false: privado

  @override void Describirse() => print("Mi pasión es salvar vidas");

  void tratarPaciente() => print("Preparando los implementos para la operación...");

  Doctor({
    String? nombre,
    int? edad,
    bool? sexo,
    required this.especializacion, 
    this.pacientes_tratados, 
    this.servicio
  }):super(
    nombre!,
    edad!,
    sexo!);
}

class Atleta extends Persona{
  final String? especialidad;
  final int? rendimiento; //del 1 al 10
  final bool? seleccion;

  @override void Describirse() => print("Soy una persona muy saludable y hago deporte para vivir más tiempo");

  void prepararEntrenamiento() => print("Preparando el siguiente entrenamiento...");

  Atleta({
    String? nombre,
    int? edad,
    bool? sexo,
    this.especialidad, 
    this.rendimiento, 
    this.seleccion
  }):super(
    nombre!,
    edad!,
    sexo!);
}

class Boxeador extends Atleta with Ejercitarse, Boxear{
  final String? estilo;
  final int? victorias; //del 1 al 10
  final int? derrotas;

  @override void Describirse() => print("Soy una persona muy disciplinada y me gusta demostrar respeto");

  void prepararEntrenamiento() => print("Alistándome para el entrenamiento");

  Boxeador({
    //String? nombre,
    //int? edad,
    //bool? sexo,
    String? especialidad,
    int? rendimiento,
    bool? seleccion,
    this.estilo, 
    this.victorias, 
    this.derrotas
  }):super(nombre: "Jorge", edad: 32, sexo: true);
}

main(){

  //Creando el artista
  var artista = Artista(
    nombre: "Camilo",
    edad: 24,
    sexo: true,
    tipo_de_arte: "Óleo", 
    nivel_artistico: 8, 
    independiente: true
  );

  print('Nombre: ${artista.nombre}, Edad: ${artista.edad}');
  artista.Describirse();
  print('Tipo de arte: ${artista.tipo_de_arte}');
  artista.prepararObra();
  artista.hacerUnDibujo();
  print('Tipo de lápiz: ${artista.tipo_de_lapiz}');


  //Creando el ingeniero
  var ingeniero = Ingeniero(
    nombre: "Andrés",
    edad: 28,
    sexo: true,
    tipo_de_ingenieria: "Sistemas", 
    calificacion_internacional: 9, 
    tiene_equipo: true
  );

  print('');
  print('Nombre: ${ingeniero.nombre}, Edad: ${ingeniero.edad}');
  ingeniero.Describirse();
  print('Tipo de ingeniería: ${ingeniero.tipo_de_ingenieria}');
  ingeniero.prepararProyecto();
  ingeniero.empezarALeer();
  ingeniero.hacerUnDibujo(); //suponiendo que es un diagrama de software en un papel
  print('Tipo de lápiz: ${ingeniero.tipo_de_lapiz}');

  //Creando el doctor
  var doctor = Doctor(
    nombre: "Juan",
    edad: 42,
    sexo: true,
    especializacion: "Cardiología", 
    pacientes_tratados: 253, 
    servicio: true
  );

  print('');
  print('Nombre: ${doctor.nombre}, Edad: ${doctor.edad}');
  doctor.Describirse();
  print('Especialización: ${doctor.especializacion}');
  doctor.tratarPaciente();
  doctor.empezarALeer();
  doctor.hacerEjercicio();
  print('Tiempo para hacer ejercicio: ${doctor.tiempo} minutos');

  //Creando el boxeador
  var boxeador = Boxeador(
    estilo: "Slugger",
    seleccion: true
  );

  print('');
  print('Nombre: ${boxeador.nombre}, Edad: ${boxeador.edad}');
  boxeador.Describirse();
  print('Estilo: ${boxeador.estilo}');
  boxeador.prepararEntrenamiento();
  boxeador.sacarSacoBoxeo();
  print('Tiempo para boxear: ${boxeador.tiempo} minutos');
}

mixin Dibujar{

  String tipo_de_lapiz = "N2";

  hacerUnDibujo(){
    print("Haciendo un dibujo...");
  }
}

mixin Leer{

  empezarALeer(){
    print("Documentándome sobre el proyecto...");
  }
}

mixin Ejercitarse{

  int tiempo = 60*2; //tiempo en minutos para hacer ejercicio

  hacerEjercicio(){
    print("Estirando tendones para empezar a trotar...");
  }
}

mixin Boxear{

  int tiempo = 60*1; //tiempo en minutos para boxear

  sacarSacoBoxeo(){
    print("Sacando el saco de boxeo...");
  }
}

//**
//Nombre: Camilo, Edad: 24
//Soy muy comprometido con mi trabajo
//Tipo de arte: Óleo
//Alistando los materiales...
//Haciendo un dibujo...
//Tipo de lápiz: N2
//
//Nombre: Andrés, Edad: 28
//Soy muy perfeccionista haciendo las cosas
//Tipo de ingeniería: Sistemas
//Pleaneando el nuevo proyecto...
//Documentándome sobre el proyecto...
//Haciendo un dibujo...
//Tipo de lápiz: N2
//
//Nombre: Juan, Edad: 42
//Mi pasión es salvar vidas
//Especialización: Cardiología
//Preparando los implementos para la operación...
//Estirando tendones para empezar a trotar...
//Tiempo para hacer ejercicio: 120 minutos
//
//Nombre: Jorge, Edad: 32
//Soy una persona muy disciplinada y me gusta demostrar respeto
//Estilo: Slugger
//Alistándome para el entrenamiento
//Sacando el saco de boxeo...
//Tiempo para boxear: 60 minutos
// */