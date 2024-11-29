import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void _changeShape() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.green ? Colors.blue : Colors.green;
      _borderRadius =
          _borderRadius == BorderRadius.circular(20) ? BorderRadius.circular(50) : BorderRadius.circular(20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container')
      ),
      body: Center(
         child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius : _borderRadius,
          )
         )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: () {
          _width = 200;
          _height = 300;
          setState(() {
            
          });
        }
        ),
    );
  }
}