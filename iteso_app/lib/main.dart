import 'package:flutter/material.dart';
import 'package:iteso_app/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos al ITESO'),
        backgroundColor: Colors.indigo,
      ),
      body: HomePage(),
    ));
  }
}
