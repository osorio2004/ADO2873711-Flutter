import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informacion personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('informacion personal'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            ListTile(
              title:Text('Juan Andres'),
              subtitle: Text('nombre'),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}