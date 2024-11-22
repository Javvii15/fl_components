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
        ],
      ),
    );
  }
}
