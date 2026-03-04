import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'paginas/Pagina1.dart';
import 'paginas/Pagina2.dart';
import 'paginas/Pagina3.dart';
import 'paginas/Pagina4.dart';
import 'paginas/Pagina5.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante Italiano',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // Define la ruta inicial de la aplicación.
      initialRoute: '/',
      // Define las rutas nombradas de la aplicación.
      routes: {
        '/': (context) => Pagina5(), // Página de bienvenida
        '/registro': (context) => Pagina1(),
        '/login': (context) => Pagina2(),
        '/inicio': (context) => Pagina3(),
        '/favoritos': (context) => Pagina4(),
      },
    );
  }
}
