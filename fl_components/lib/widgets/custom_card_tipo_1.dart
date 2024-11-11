import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color : AppTheme.primary),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Ut cupidatat quis reprehenderit dolor mollit.'),
          )
        ],
      )
    );
  }
}