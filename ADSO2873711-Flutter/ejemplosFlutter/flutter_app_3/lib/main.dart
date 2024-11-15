import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return MaterialApp(
      title: 'Widget basicos Flutter',
      home: Column(
        children: [
          const Icon(
            Icons.add_home_work,
            color: Colors.pink,
            size: 40,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          const Text('Lenguajes de Programacion'),
          const Text('Dart'),
          const Text('js'),
          const Text('Java'),
          const Text('Python'),
          const Text('c++'),
          const Text('ruby'),
          const Text('c#'),
          const Text('php'),
          const Text('typeScript'),
          const Text('.Net'),
          ElevatedButton(
            onPressed: (){}, 
            style: estilos,
            child: const Text('Enviar'),
            ),
            //imagen de la Web
            Row(
              children: [
                Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 300,
                ),
                Image.network("lib/eagle.jpg",
                width: 400,
                ),
              ],
            ),
        ],
      ),
    );
  }
}