import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  double _vol = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Icon Button',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              onPressed: () => setState(() {
                _vol += 10;
              }),
              icon: Icon(Icons.volume_up),
              iconSize: 50,
              color: Colors.blue,
            ),
          ),
          Text(
            'volume :${_vol}',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
