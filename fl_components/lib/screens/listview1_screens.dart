
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Hasbulla piscina', 'Hasbulla friolero', 'Hasbulla con el gato', 'Hasbulla con pingüino'];
  //hasbulla piscina: https://pbs.twimg.com/media/FDuPcNCXoAMqk2h.jpg
  //hasbulla friolero: https://wallpapers.com/images/hd/hasbulla-snow-winter-clothing-1u51peghgwxqmat2.jpg
  //hasbulla con el gato: https://i.pinimg.com/736x/0f/07/f2/0f07f215f7a95e0fad7c960502f6df79.jpg
  //hasbulla con pinguino: https://pbs.twimg.com/media/Fbn9NiAakAArzVx.jpg
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("ListView Tipo 1"),
          //backgroundColor: const Color.fromARGB(255, 19, 75, 112),
          foregroundColor: Colors.blue),
      body: ListView(
        children: [
          ...options
              .map((e) => 
              ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(e),
                  ))
              .toList()
          /**/
        ],
      ),
    );
  }
}



