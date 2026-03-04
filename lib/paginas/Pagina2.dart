import 'package:flutter/material.dart';
import 'Pagina3.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double headerHeight = MediaQuery.of(context).size.height * 0.45;

    return Scaffold(
      backgroundColor: const Color(0xFFDCEDC8), // Verde claro
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Sección del Título (45% de la pantalla)
            Container(
              height: headerHeight,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                "ITA",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 10,
                ),
              ),
            ),
            
            // Formulario de Login
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario o Correo",
                      fillColor: Colors.red,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      fillColor: Colors.red,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Botón Rojo
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      // Simulación de login y navegación
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Pagina3()),
                      );
                    },
                    child: const Text(
                      "INGRESAR",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Volver atrás", style: TextStyle(color: Colors.black54)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}