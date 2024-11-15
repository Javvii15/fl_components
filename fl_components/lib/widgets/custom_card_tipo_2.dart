import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://img.rtve.es/imagenes/quien-hasbullah-magomedov/1628259969545.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 3000),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(top: 10, bottom:10, right: 20),
            child: 
            const Text('Hasbulla')
          )
        ],
      ),
    );
  }
}