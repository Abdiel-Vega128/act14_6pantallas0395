import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8F5E9),
      appBar: AppBar(
        title: Text("Restaurante ITA"),
        backgroundColor: Colors.red,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0), 
            child: Image.network('https://raw.githubusercontent.com/Abdiel-Vega128/Examen41_0395/refs/heads/main/Pizza-Margherita-on-transparent-background-PNG.png')
          ),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: MenuLateral(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Nuestra Historia", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("En ITA servimos tradición italiana desde 1990. Nuestras pastas son hechas a mano cada mañana."),
          ],
        ),
      ),
    );
  }
}