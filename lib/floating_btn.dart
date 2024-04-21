import 'package:flutter/material.dart';

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
            'Appbar demo',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 20.0,
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
