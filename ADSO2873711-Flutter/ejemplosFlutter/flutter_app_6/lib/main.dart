import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override//Se sobre escribe el metodo del padre createState para poder crear estados de widget
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override// SE sobre escribe el metodo build para retrnar un widget con toda la interfaz
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios turisticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('sistema turistico'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text('la gran muralla china'),
                Text('torre eiffel'),
                Text('coliseo romano'),
                Text('torre de pizza'),
                Text('machu pichu'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}