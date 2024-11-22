import 'package:fl_components/widgets/widget_reutilizable.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Hasbulla piscina'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (variables) => const WidgetReutilizable(
                    titulo: 'Hasbulla piscina',
                    descripcion: 'Hasbulla en un día soleado en la piscina.',
                    imageUrl: 'https://pbs.twimg.com/media/FDuPcNCXoAMqk2h.jpg',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Hasbulla friolero'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (variables) => const WidgetReutilizable(
                    titulo: 'Hasbulla friolero',
                    descripcion: 'Hasbulla abrigado en día frío en invierno.',
                    imageUrl: 'https://wallpapers.com/images/hd/hasbulla-snow-winter-clothing-1u51peghgwxqmat2.jpg',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Hasbulla con el gato'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (variables) => const WidgetReutilizable(
                    titulo: 'Hasbulla con el gato',
                    descripcion: 'Hasbulla y su gato.',
                    imageUrl: 'https://i.pinimg.com/736x/0f/07/f2/0f07f215f7a95e0fad7c960502f6df79.jpg',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Hasbulla con pingüino'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (variables) => const WidgetReutilizable(
                    titulo: 'Hasbulla con el pingüino',
                    descripcion: 'Hasbulla con un pingüino.',
                    imageUrl: 'https://pbs.twimg.com/media/Fbn9NiAakAArzVx.jpg',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
