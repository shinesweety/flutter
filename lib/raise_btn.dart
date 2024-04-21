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
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'click me',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 108, 230, 249)),
            ),
          ),
        ));
  }
}
