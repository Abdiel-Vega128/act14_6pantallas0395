import 'package:flutter/material.dart';
import 'Pagina3.dart';
import 'Pagina4.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.red), child: Text("ITA Menú", style: TextStyle(color: Colors.white, fontSize: 24))),
          ListTile(leading: Icon(Icons.home), title: Text("Inicio"), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina3()))),
          ListTile(leading: Icon(Icons.favorite), title: Text("Favoritos"), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina4()))),
          ListTile(leading: Icon(Icons.restaurant), title: Text("Platillos"), onTap: () {}),
          ListTile(leading: Icon(Icons.shopping_cart), title: Text("Carrito"), onTap: () {}),
        ],
      ),
    );
  }
}