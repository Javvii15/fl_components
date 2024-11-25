import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Text('JA'),
            backgroundColor: Colors.white54,
          ),
        )
      ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius:120,
          backgroundImage: NetworkImage('https://media.infocielo.com/p/c2aeea3810f9d4ba01ce201feeea04b9/adjuntos/299/imagenes/000/309/0000309610/20200608185851_20200608-185929jpg.jpg'),
         ),
      ),
    );
  }
}