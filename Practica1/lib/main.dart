import 'package:flutter/material.dart';
/*import 'package:p1/widget/inicio.dart';*/
//import 'package:p1/widget2/inicio2.dart';
import 'package:p1/operaciones/suma.dart';
//import 'package:p1/widget3/proyecto4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Suma(),
    );
  }
}
