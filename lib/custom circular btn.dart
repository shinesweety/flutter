import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'custom circular button',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Column(
        children: [
          CircularButton(
            width: 60,
            height: 60,
            color: Colors.orange,
            icon: Icon(Icons.add),
            onclick: () {
              print("Button clicked");
            },
          ),
          CircularButton(
            width: 50,
            height: 50,
            color: Colors.blue,
            icon: Icon(Icons.menu),
            onclick: () {
              print("Button clicked");
            },
          ),
          CircularButton(
            width: 60,
            height: 60,
            color: Colors.green,
            icon: Icon(Icons.people),
            onclick: () {
              print("Button clicked");
            },
          ),
        ],
      )),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onclick;

  const CircularButton(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.icon,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
