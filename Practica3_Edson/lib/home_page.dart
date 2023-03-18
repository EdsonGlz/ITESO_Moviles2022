import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13.0),
                      child: Image(
                        image: NetworkImage(
                            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/champagne-beach-espiritu-santo-island-vanuatu-royalty-free-image-1655672510.jpg?crop=1.00xw:0.755xh;0,0.173xh&resize=1200:*"),
                      ),
                    ),
                  )
                  //),
                  ),

              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            index: index,
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Reservación en progreso")));
                        setState(() {});
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
