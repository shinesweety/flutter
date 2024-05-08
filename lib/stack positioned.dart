import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack positioned',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      /*body: Center(
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            'Click me'),),),*/
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.topRight,
            fit: StackFit.loose,
            children: [
              Container(
                height: 250,
                width: 250,
                color: Color.fromARGB(255, 19, 205, 75),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 238, 98, 59),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
