


import 'package:flutter/material.dart';

class acceso extends StatefulWidget {
  final String dato, datop;

  const acceso({super.key, required this.dato, required this.datop});
  @override
  State<acceso> createState() {
    return Clase();
  }
}

class Clase extends State<acceso> {
  String d = "", p = "";
  @override
  void initState(){//se ejecuta al inicio de la clase
    super.initState();
    d = widget.dato;
    p = widget.datop;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 199, 199),
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: const Color.fromARGB(255, 197, 236, 236),
      ),
      body: Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
          elevation: 8,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Bienvenido",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
            ),
            SizedBox(height: 10),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipOval(
                child: Image.asset('assets/image.jpg'),
              ),
            ),
            SizedBox(height: 10),
            Text("Bienvenido $d \n y su password es $p",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
              fontFamily: "Times new Roman"
            ),
            ),
          ],
        ),
        ),
        ),
      ),
    ),
    );
  }
}