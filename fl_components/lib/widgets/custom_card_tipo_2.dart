import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://img.rtve.es/imagenes/quien-hasbullah-magomedov/1628259969545.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          )       
        ],
      ),
    );
  }
}