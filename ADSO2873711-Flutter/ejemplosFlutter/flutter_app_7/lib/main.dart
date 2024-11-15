import 'dart:math';

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
        title: 'Sitios turisticos',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Sitios turisticos'),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          body: ListView.builder(
            itemCount: sitiosTuristicos.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color.fromARGB(255, 239, 245, 210),
                shadowColor: Colors.black,
                surfaceTintColor: Colors.grey,
                elevation: 5,
                margin: const EdgeInsets.all(5),
                child: ListTile(
                  title: Text(sitiosTuristicos[index]),
                  subtitle: Text("sitiosTuristicos #${index + 1}"),
                  leading: const Icon(Icons.location_on),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                  //   print(
                  //       "tap sobre el sitio turistico ${sitiosTuristicos[index]}");
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('sitio turistico N ${index + 1}'),
                          content: Text(sitiosTuristicos[index]),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('cerrar'))
                          ],
                        );
                      });
                   },
                ),
              );
            },
          ),
          // ListView.separated(
          // itemCount: sitiosTuristicos.length,
          // separatorBuilder: (BuildContext context, int index) {
          // return const Divider();
          // },
          // itemBuilder: (BuildContext context, int index) {
          // return ListTile(
          // title: Text(sitiosTuristicos[index]),
          // subtitle: Text("sitiosTuristicos${index + 1}"),
          // leading: const Icon(Icons.location_on),
          // );
          // },
          // ),
        ));
  }
}

List<String> sitiosTuristicos = [
  "Gran Cañón, EE. UU.",
  "Machu Picchu, Perú",
  "Taj Mahal, India",
  "Torre Eiffel, Francia",
  "Coliseo, Italia",
  "Parque Nacional Banff, Canadá",
  "Santorini, Grecia",
  "Cráter del Ngorongoro, Tanzania",
  "Selva Amazónica, Sudamérica",
  "Petra, Jordania",
  "Stonehenge, Reino Unido",
  "Isla de Pascua, Chile",
  "Yellowstone, EE. UU.",
  "Monte Everest, Nepal",
  "Ciudad Prohibida, China",
  "Chichén Itzá, México",
  "Sagrada Familia, España",
  "Parque Nacional Torres del Paine, Chile",
  "Neuschwanstein, Alemania",
  "Cataratas del Iguazú, Argentina/Brasil",
  "Gran Muralla, China",
  "Sydney Opera House, Australia",
  "Palacios de Versalles, Francia",
  "Desierto de Sahara, África",
  "Fjord de Geiranger, Noruega",
  "Angkor Wat, Camboya",
  "Monte Fuji, Japón",
  "Arrecife de Belice, Belice",
  "Venecia, Italia",
  "Valle de los Reyes, Egipto",
  "Cueva de hielo de Mendenhall, EE. UU.",
  "Isla Bora Bora, Polinesia Francesa",
  "Parque Nacional de Yellowstone, EE. UU.",
  "Acceso a la Antártida",
  "Jardines de Keukenhof, Países Bajos",
  "Monte Kilimanjaro, Tanzania",
  "Acropolis, Grecia",
  "Isla de Santorini, Grecia",
  "Isla Galápagos, Ecuador",
  "Puerta de Brandenburgo, Alemania",
  "Parque Nacional Zhangjiajie, China",
  "Ruinas de Tikal, Guatemala",
  "Cañón del Antílope, EE. UU.",
  "Plaza Roja, Rusia",
  "Gran Barrera de Coral, Australia",
  "Parque Nacional Yosemite, EE. UU.",
  "Sahara Occidental, Marruecos",
  "Monte Olimpo, Grecia",
  "Cascadas de Plitvice, Croacia",
  "Parque Nacional Kruger, Sudáfrica",
  "Catedral de San Basilio, Rusia",
  "Ciudad de Petra, Jordania",
  "Salar de Uyuni, Bolivia",
  "Monte Denali, EE. UU.",
  "Isla de Komodo, Indonesia",
  "Parque Nacional de Zion, EE. UU.",
  "Machu Picchu, Perú",
  "Ruinas de Pompeya, Italia",
  "Kuala Lumpur, Malasia",
  "La Muralla China",
  "Lago Baikal, Rusia",
  "Cascadas de Victoria, Zimbabue/Zambia",
  "Base de la Torre CN, Canadá",
  "Selva Negra, Alemania",
  "Mauna Kea, Hawái",
  "Parque Nacional de los Glaciares, EE. UU.",
  "La Sagrada Familia, España",
  "Isla de Maui, Hawái",
  "Stone Mountain, EE. UU.",
  "Mont Saint-Michel, Francia",
  "Valle de Aconcagua, Argentina",
  "Centro Histórico de Éfeso, Turquía",
  "Jardines de Versalles, Francia",
  "Parque Nacional de los Secuoyas, EE. UU.",
  "Lago Titicaca, Perú/Bolivia",
  "Basílica de San Pedro, Italia",
  "Giza, Egipto",
  "Parque Nacional de Yosemite, EE. UU.",
  "Ruinas de Caral, Perú",
  "Machu Picchu, Perú",
  "Catedral de Notre Dame, Francia",
  "Rascacielos Burj Khalifa, Dubái",
  "Ruta 66, EE. UU.",
  "Parque Nacional Acadia, EE. UU.",
  "Ronda, España",
  "La Isla de Skye, Escocia",
  "La Alhambra, España",
  "Faro de Alejandría, Egipto",
  "Centro Histórico de Roma, Italia",
  "Parque Nacional de Arenal, Costa Rica",
  "Monte Rainier, EE. UU.",
  "Parque Nacional Uluru-Kata Tjuta, Australia",
  "Valle de Yosemite, EE. UU.",
  "Cascadas de Yosemite, EE. UU.",
  "Cabo de Buena Esperanza",
];
