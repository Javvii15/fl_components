import 'package:flutter/material.dart';

class WidgetReutilizable extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String imageUrl;

  const WidgetReutilizable(
    { super.key, 
      required this.titulo, 
      required this.descripcion, 
      required this.imageUrl
    }
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      descripcion,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
