import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<inicio>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Practica 1',
      style: TextStyle(
        color: Colors.white,
      ),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 79, 238),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hola mundo',
        style: TextStyle(
               color: Colors.deepPurpleAccent,
               fontSize: 25,
            ),
        ),
          Text('Hola',
          style: TextStyle(
               color: Colors.deepPurpleAccent,
               fontSize: 25,
            ),
          ),
      ],
    ),
   );

  }


}