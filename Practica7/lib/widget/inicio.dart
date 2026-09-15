import 'package:flutter/material.dart';
import 'package:practica7/widget/segunda.dart'; // Ajusta el path

class inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<inicio> {
  TextEditingController caja = TextEditingController();
  String mensaje = "0";

  void validar() {
    String texto = caja.text.trim();

    setState(() {
      if (texto.isEmpty) {
        mensaje = "La caja está vacía";
      } else {
        mensaje = "La caja no está vacía";
        Alertas(texto);
      }
    });
  }

  void Alertas(String texto) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Validación",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          content: Text(
            "La caja de texto no está vacía",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra la alerta

                // Verificar si es número
                final numero = num.tryParse(texto);
                if (numero != null) {
                  // Es número → ir a la segunda ventana
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => segunda(
                        dato: texto,
                      ),
                    ),
                  );
                }
                // Si no es número, solo se cierra la alerta
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 199, 199),
      appBar: AppBar(
        title: Text('Ventana Principal'),
        backgroundColor: const Color.fromARGB(255, 197, 236, 236),
      ),
      body: Column(
        children: [
          // ========== PRIMERA SECCIÓN (50%) ==========
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Card(
                  elevation: 8,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: caja,
                          decoration: InputDecoration(
                            labelText: "Escribe algo",
                            hintText: "Ingresa un texto o número",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: validar,
                            child: Text(
                              "Validar",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // ========== SEGUNDA SECCIÓN (50%) ==========
          Expanded(
            child: Center(
              child: Text(
                mensaje,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Comic Sans",
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}