import 'package:flutter/material.dart';

class inicio2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<inicio2>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Practica 2',
      style: TextStyle(
        color: Colors.white,
      ),
      ),
      backgroundColor:const Color.fromARGB(255, 212, 47, 25),
    ),
    //contenedores
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          child: Text('Hola Mundo',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 24
          )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(25),
          color: const Color.fromARGB(255, 1, 169, 29),
          width: double.infinity,
          child: Text('Hola',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: "Times New Roman",
            fontSize: 24
          )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
          onPressed: (){},
          child: Text("Boton")
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Escribe el nombre",
            border: OutlineInputBorder()
          ),
        ),
      ],
    ),
   );

  }


}