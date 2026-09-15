

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Suma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
  
  
}


class Disenio() extends State<Suma> {
  final TextEditingController n1 = TextEditingController();
  final TextEditingController n2 = TextEditingController();

  String r = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Suma de dos Numeros"),
        backgroundColor: const Color.fromARGB(255, 192, 214, 240),
        elevation: 10,
        shadowColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(5),
          ),
          elevation: 15,
          shadowColor: Colors.white,
          child: Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Ingresa Los datos a Sumar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo
                ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: n1,
                  decoration: InputDecoration(
                    labelText: "Escribe un numero",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.amp_stories)
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: n2,
                  decoration: InputDecoration(
                    labelText: "Escribe otro numero",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.amp_stories)
                  ),
                ),
                SizedBox(height: 20),
                Text(r,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.summarize),
                    onPressed: (){
                      final int a = int.tryParse(n1.text) ?? 0;
                      final int b = int.tryParse(n1.text) ?? 0;
                      setState(() {
                        r = "${a + b}";  
                      });
                      
                    },
                    label: Text('Sumar',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      )
                    )
                  ),
                ),
              ],
            )
            ),
        ),
      ),
    );
  }
  
}