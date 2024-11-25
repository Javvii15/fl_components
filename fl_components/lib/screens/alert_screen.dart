import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    //print('He pulsado en alerta');
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return AlertDialog(
          title: const Text ('Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: 
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido del mensaje de alerta'),
                FlutterLogo(size: 100,)
              ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cerrar'),
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context) , 
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          )
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}