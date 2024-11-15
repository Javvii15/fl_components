import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageUrl;
  final String? nombre;

  const CustomCardTipo2({super.key, required this.imageUrl, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 3000),
          ),
          if(nombre != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 10, bottom:10, right: 20),
            child: 
              Text(nombre ?? 'Desconocido')
          )
        ],
      ),
    );
  }
}