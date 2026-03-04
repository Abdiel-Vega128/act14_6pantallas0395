import 'package:flutter/material.dart';
// Importamos las páginas para que el main las reconozca
import 'paginas/Pagina5.dart'; 
import 'paginas/Pagina1.dart';
import 'paginas/Pagina2.dart';
import 'paginas/Pagina3.dart';
import 'paginas/Pagina4.dart';

void main() {
  runApp(const MiRestauranteITA());
}

class MiRestauranteITA extends StatelessWidget {
  const MiRestauranteITA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante ITA',
      debugShowCheckedModeBanner: false,
      
      // Definimos el estilo visual global de la app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: const Color(0xFFDCEDC8), // Verde claro global
        useMaterial3: true,
        
        // Estilo global para todos los botones rojos
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        
        // Estilo para los campos de texto
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          labelStyle: TextStyle(color: Colors.black54),
        ),
      ),

      // La aplicación inicia en la Pagina 5 (Bienvenida)
      home: Pagina5(),
      
      // Opcional: Rutas nombradas para facilitar la navegación
      routes: {
        '/registro': (context) => Pagina1(),
        '/login': (context) => Pagina2(),
        '/inicio': (context) => Pagina3(),
        '/favoritos': (context) => Pagina4(),
      },
    );
  }
}