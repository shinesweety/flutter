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
      body: Center(
        child: Text('Text content',
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 171, 10, 171),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 2.0,
              wordSpacing: 5.0,
              backgroundColor: Color.fromARGB(255, 186, 186, 187),
              shadows: [
                Shadow(
                  color: const Color.fromARGB(26, 20, 20, 20),
                  offset: Offset(1, 4),
                  blurRadius: 2,
                ),
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.double,
            )),
      ),
    );
  }
}
