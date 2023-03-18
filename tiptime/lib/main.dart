import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiptime/home_page.dart';
import 'package:tiptime/providers/tip_time_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
      )),
      home: ChangeNotifierProvider(
        create: (context) => TipTimeProvider(),
        child: HomePage(),
      ),
    );
  }
}
