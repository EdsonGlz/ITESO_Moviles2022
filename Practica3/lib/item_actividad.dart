import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key, required this.index});
  final int index;
  List<String> imagenes = [
    "https://www.olaviajes.com/blogs_pictures/1671708148TajMahal.jpg",
    "https://www.hola.com/imagenes/viajes/2014072572733/top-25-destinos-turisticos-mundo/0-281-707/a_Machu-Picch-a.jpg",
    "https://www.viajerosenruta.com/wp-content/uploads/2018/12/coliseo-romano.jpg",
    "https://www.pomstandard.com/wp-content/uploads/sites/4/2019/06/pagina-web-para-negocio-de-experiencias-turisticas.jpg",
    "https://tipsparatuviaje.com/wp-content/uploads/2019/08/gran-muralla-china.jpg"
  ];

  List<String> lugares = [
    "Taj Mahal",
    "Machu Pichu",
    "Coliseo",
    "Paseo en globo",
    "Muralla China"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image(
              image: NetworkImage(imagenes[index]),
            ),
          ),
          Text("Day " + (index + 1).toString(), style: TextStyle(fontSize: 11)),
          Text(lugares[index]),
        ],
      ),
    );
  }
}
