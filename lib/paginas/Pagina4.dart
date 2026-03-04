import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class Pagina4 extends StatelessWidget {
  // Datos de ejemplo para los platos favoritos
  final List<Map<String, String>> favoriteItems = [
    {'name': 'Pasta Carbonara', 'image': 'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&q=80'},
    {'name': 'Pizza Margherita', 'image': 'https://raw.githubusercontent.com/Abdiel-Vega128/act14_6pantallas0395/refs/heads/main/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png'},
    {'name': 'Tiramisú', 'image': 'https://raw.githubusercontent.com/Abdiel-Vega128/act14_6pantallas0395/refs/heads/main/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png'},
    {'name': 'Bruschetta', 'image': 'https://raw.githubusercontent.com/Abdiel-Vega128/act14_6pantallas0395/refs/heads/main/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png'},
    {'name': 'Lasaña', 'image': 'https://raw.githubusercontent.com/Abdiel-Vega128/act14_6pantallas0395/refs/heads/main/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png'},
    {'name': 'Ravioli', 'image': 'https://raw.githubusercontent.com/Abdiel-Vega128/act14_6pantallas0395/refs/heads/main/pngtree-authentic-italian-pizza-with-cheese-and-fresh-vegetable-toppings-png-image_14714611.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Un fondo más neutro
      appBar: AppBar(
        title: const Text("Mis Favoritos"),
        backgroundColor: Colors.red,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            final item = favoriteItems[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      item['image']!,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                        return progress == null ? child : const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 50, color: Colors.grey);
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 0,
                      right: 8,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          HeartButton(),
                          Expanded(
                            child: Text(
                              item['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                shadows: [Shadow(blurRadius: 2, color: Colors.black54)],
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 28,
        shadows: const [Shadow(blurRadius: 3, color: Colors.black45)],
      ),
      onPressed: () => setState(() => isFavorite = !isFavorite),
    );
  }
}