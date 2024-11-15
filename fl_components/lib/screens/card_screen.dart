import 'package:fl_components/widgets/widgets.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://img.rtve.es/imagenes/quien-hasbullah-magomedov/1628259969545.jpg', nombre: 'Hasbulla fighter'),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://estaticos-cdn.prensaiberica.es/clip/eb71b691-aa8d-4742-a48e-dab0f9f04f6d_16-9-discover-aspect-ratio_default_0.jpg', nombre: 'Hasbulla calvo'),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://www.concierto.cl/wp-content/uploads/2022/01/Hasbulla-Magomedov.jpg',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://ih1.redbubble.net/image.5237492132.5051/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg', nombre: 'Hasbulla adinerado'),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://ak.uecdn.es/p/108/thumbnail/entry_id/0_3c4ynsbq/width/660/cache_st/1683708396/type/2/bgcolor/000000/0_3c4ynsbq.jpg', nombre:'Hasbulla trajeado'),
         ],
      )
    );
  }
}
