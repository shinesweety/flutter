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
          'Rich Text',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: RichText(
          text: TextSpan(
              text: 'shine sweety',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                fontStyle: FontStyle.italic,
              ),
              children: <TextSpan>[
            TextSpan(
                text: ' computer',
                style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
            TextSpan(
                text: ' Education',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.double)),
          ])),
    );
  }
}
