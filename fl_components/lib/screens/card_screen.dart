import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
         children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color : AppTheme.primary),
                  title: Text('Titulo de la tarjeta'),
                  subtitle: Text('Ut cupidatat quis reprehenderit dolor mollit.'),
                )
              ],
            )
          )
         ],
      )
    );
  }
}