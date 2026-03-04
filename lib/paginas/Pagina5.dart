import 'package:flutter/material.dart';
import 'Pagina1.dart';
import 'Pagina2.dart';

class Pagina5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFE8F5E9),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.45,
            alignment: Alignment.center,
            child: Text("ITA", style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold, color: Colors.green[900])),
          ),
          Text("Bienvenidos a la experiencia Italiana", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(200, 50)),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Pagina1())),
            child: Text("Registrarse", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.red), minimumSize: Size(200, 50)),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Pagina2())),
            child: Text("Iniciar Sesión", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}