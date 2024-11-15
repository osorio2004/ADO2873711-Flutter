import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {  
    
    return MaterialApp(
      title: 'informacio personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Informacion Personal')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/256/3001/3001758.png'
                      ),
                  radius: 100,
                ),
                Image(
                  image: NetworkImage('/lib/Flutter.png'),
                ),
                Divider(),
                ListTile(
                  title: Text('Juan Andres'),
                  subtitle: Text('Nombre'),
                  leading: Icon(Icons.account_circle),
                ),
                Divider(),
                ListTile(
                  title: Text('Osorio Gomez'),
                  subtitle: Text('Apellido'),
                  leading: Icon(Icons.account_circle_outlined),
                ),
                Divider(),
                ListTile(
                  title: Text('3009669152'),
                  subtitle: Text('Telefono'),
                  leading: Icon(Icons.add_call),
                ),
                Divider(),
                ListTile(
                  title: Text('call 15B #9-89'),
                  subtitle: Text('Direccion'),
                  leading: Icon(Icons.add_location_alt),
                ),
                Divider(),
                ListTile(
                  title: Text('SENA - CPIC'),
                  subtitle: Text('Empresa'),
                  leading: Icon(Icons.apartment_rounded),
                ),
                Divider(),
                ListTile(
                  title: Text('170001'),
                  subtitle: Text('Codigo'),
                  leading: Icon(Icons.approval),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
