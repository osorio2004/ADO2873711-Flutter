import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Curriculum Vitae V1')),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('lib/JD.jpeg'), // Ruta a tu imagen local
                radius: 100,
              ),
            ),
            const Divider(
              color: Colors.green
            ),
            buildInfoCard(Icons.person, "Informacion Personal"),
            buildInfoCard(Icons.school, "Formacion Academica"),
            buildInfoCard(Icons.card_membership, "Certificaciones y Cursos"),
            buildInfoCard(Icons.factory, "Experiencia Laboral"),
            buildInfoCard(Icons.task_sharp, "Habilidades"),
            buildInfoCard(Icons.star, "Proyecto Destacados"),
            buildInfoCard(Icons.abc_sharp, "Idiomas"),
            buildInfoCard(Icons.diversity_3, "Referencias Personales"),
          ],
        ),
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String title,) {
    return Card(
      margin: const EdgeInsets.all(5),
      color: const Color.fromARGB(255, 239, 245, 210),
      shadowColor: Colors.black, // Fondo similar al de tu imagen
      elevation: 8,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          // Acciones opcionales al tocar cada tarjeta
        },
      ),
    );
  }
}
