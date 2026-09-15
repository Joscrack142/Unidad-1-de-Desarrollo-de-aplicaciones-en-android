import 'package:flutter/material.dart';

class Programa4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clases();
  }
}

class Clases extends State<Programa4>{
  final TextEditingController n1 = TextEditingController();
  final TextEditingController n2 = TextEditingController();

  String r = "", oper="";
 void Operaciones(){
    final int a = int.tryParse(n1.text) ?? 0;
    final int b = int.tryParse(n2.text) ?? 0;
  setState(() {
    print("Oper: "+oper);
    if (oper == "Suma"){
          r = "${a + b}";
    }
    if (oper == "Resta"){
          r = "${a - b}";
    }
    if (oper == "Multiplicación"){
          r = "${a * b}";
    }
    if (oper == "División"){
          r = "${a / b}";
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("El resultado:" +r)),
    );
  });                  
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Suma de dos numeros'),
          backgroundColor: const Color.fromARGB(255, 192, 214, 240),
          elevation: 10,
          shadowColor: Colors.indigoAccent,
        ),
       body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 15,
          shadowColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
               children: [
                Text('Ingresa los datos a sumar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
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
                SizedBox(height: 20,),
                /*Text(r,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                ),*/
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Elige la operación",
                    border: OutlineInputBorder(), 
                  ),
                  items: [
                    DropdownMenuItem(value: 'Suma', child:Text('Suma')),
                    DropdownMenuItem(value: 'Resta', child:Text('Resta')),
                    DropdownMenuItem(value: 'Multiplicación', child:Text('Multiplicación')),
                    DropdownMenuItem(value: 'División', child:Text('División')),
                  ], 
                  onChanged: (value) => oper = value!,
                  validator: (v) => v == null ? "Elige una operacion": null,
                  ),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.summarize),
                    onPressed: Operaciones,
                    label:Text('Realizar operación',
                        style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                ),
                    ),
                ),
               ],
            ),
            ),
        ),
       ),
    );
  }
}