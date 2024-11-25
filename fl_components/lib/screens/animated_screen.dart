import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container')
      ),
      body: Center(
         child: Text('AnimatedScreen'),
      ),
    );
  }
}