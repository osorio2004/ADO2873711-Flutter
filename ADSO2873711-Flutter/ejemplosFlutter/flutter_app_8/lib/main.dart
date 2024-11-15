import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabajo con Grids'),
          backgroundColor: const Color.fromARGB(255, 216, 210, 200),
          foregroundColor: const Color.fromARGB(255, 70, 70, 70),
        ),
        body: Container(
          color: const Color.fromARGB(255, 211, 175, 92),
          child: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: const [
              Card(
                child: Column(
                  children: [
                    Text('tarjeta 1'),
                    Text('ADSO'),
                    Text('2873711'),
                    Icon(Icons.arrow_back),
                  ],
                ),
              ),
              Card(
                child: Text('tarjeta 2'),
              ),
              Card(
                child: Text('tarjeta 3'),
              ),
              Card(
                child: Text('tarjeta 4'),
              ),
              Card(
                child: Text('tarjeta 5'),
              ),
              Card(
                child: Text('tarjeta 6'),
              ),
              Card(
                child: Text('tarjeta 7'),
              ),
              Card(
                child: Text('tarjeta 8'),
              ),
              Card(
                child: Text('tarjeta 9'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
