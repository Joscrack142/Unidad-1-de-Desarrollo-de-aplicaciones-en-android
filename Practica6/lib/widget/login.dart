


import 'package:flutter/material.dart';
import 'package:practica6/widget/acceso.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() {
    return Clase();
  }
}

class Clase extends State<Login> {
  TextEditingController usuario = new TextEditingController();
  TextEditingController password = new TextEditingController();

void Validar(){
  String u = usuario.text;
  String p = password.text;
  setState(() {
    if(u == "admin" && p == "12345"){
      //Alertas("Datos Correctos", "Bienvenido");
      Navigator.push(//esto nos permite Regresar
      //Navigator.pushReplacement(//esto no permite regresar
        context,
        MaterialPageRoute(
          builder: (context) => acceso(
            dato : u,
            datop : p,
            ), 
          ),
      );
    }else{
      Alertas("Error", "Datos Incorrectos");
      usuario.clear();
      password.clear();
    }
  });
  

}

void Alertas(String titulo, String mensaje){

  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text(titulo,
        style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
        content: Text(mensaje,
        style: TextStyle(
            fontSize: 18,
            color: const Color.fromARGB(255, 174, 0, 0),
          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('Aceptar'))
        ],
      );
    }
    );

}

  @override
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
            Text('Ingresa los datos',
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
            Container(
              width: double.infinity,
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                  labelText: 'Escribe el usuario',
                  hintText: 'Ingresa el Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Escriba el Password',
                  hintText: 'Escriba el Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: Validar,
                label: Text('Aceptar',
                style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
                ),
                ),
                ),
            )
          ],
        ),
        ),
        ),
      ),
    ),
    );
  }
}