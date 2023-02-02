import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  bool tap = false;
  bool tap_food = false;
  bool tap_info = false;
  bool tap_location = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ListTile(
              title: Text(
                "El ITESO, universidad Jesuita de Guadalajara",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  IconButton(
                    color: tap ? Colors.indigo : Colors.black54,
                    onPressed: () {
                      counter++;
                      tap = !tap;
                      setState(() {});
                    },
                    icon: Icon(Icons.thumb_up),
                  ),
                  Text("$counter")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        iconSize: 40,
                        color: tap_food ? Colors.indigo : Colors.black54,
                        onPressed: () {
                          tap_food = !tap_food;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Puedes encontrar comida en sus cafeterias")));
                          setState(() {});
                        },
                        icon: Icon(Icons.restaurant)),
                    Text("Comida")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        iconSize: 40,
                        color: tap_info ? Colors.indigo : Colors.black54,
                        onPressed: () {
                          tap_info = !tap_info;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Puedes encontrar comida en sus cafeterias")));
                          setState(() {});
                        },
                        icon: Icon(Icons.info)),
                    Text("Información")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        iconSize: 40,
                        color: tap_location ? Colors.indigo : Colors.black54,
                        onPressed: () {
                          tap_location = !tap_location;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Puedes encontrar comida en sus cafeterias")));
                          setState(() {});
                        },
                        icon: Icon(Icons.location_on)),
                    Text("Ubicación")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México.",
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
