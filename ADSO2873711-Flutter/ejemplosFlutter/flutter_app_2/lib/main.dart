import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());//Aca inicia y se lanza la aplicacion
}
class Principal extends StatelessWidget {// Se crea una clase que hereda de StatelessWidget para crear un Widget sin estado
  const Principal({super.key});

  @override //Se sobreescribe el metodo build de la clase padre padre para generar la interfaz de ususario
  Widget build(BuildContext context) {
    // Se retorna un Widget, en nuestro caso MateriaApp
    return const MaterialApp(
      title: 'Mi primera App - ADSO2873711',
      home: Text("Primera aplicación en flutter\nAndres Osorio\nCPIC - SENA"),
    );
  }
}