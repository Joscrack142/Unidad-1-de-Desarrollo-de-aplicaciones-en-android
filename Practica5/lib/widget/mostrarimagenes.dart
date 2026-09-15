import 'package:flutter/material.dart';

class MostrarImagenes extends StatefulWidget{
  const MostrarImagenes({super.key});

  @override
  State<StatefulWidget> createState(){
    return Imagenes();
  }
}

class Imagenes extends State<MostrarImagenes>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,

      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/img1.jpg"),
                    Image.asset("assets/img2.jpg"),
                    Image.asset("assets/img3.jpg"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/img1.jpg"),
                    Image.asset("assets/img2.jpg"),
                    Image.asset("assets/img3.jpg"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
