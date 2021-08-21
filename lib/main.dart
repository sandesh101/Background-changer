import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(ColorChanger());

class ColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Background Color Chnager',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Changer'),
          centerTitle: true,
          backgroundColor: Colors.purple[900],
        ),
        body: MainItem(),
      ),
    );
  }
}

class MainItem extends StatefulWidget {
  @override
  _MainItemState createState() => _MainItemState();
}

class _MainItemState extends State<MainItem> {
  List color = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.teal,
  ];

  var currentColor = Colors.pink;

  void setColor() {
    var colors = Random().nextInt(color.length);
    setState(() {
      currentColor = color[colors];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: ElevatedButton(
          onPressed: setColor,
          child: Text('Click to change'),
        ),
      ),
    );
  }
}
