import 'package:fl_components/screens/listview1_screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Compnentes de Flutter'),
        backgroundColor: Colors.blue,
        elevation:0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.abc_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {
            Navigator.pushNamed(context, 'vwrwe');
          }
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5
      )
      );
  }
}