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
          'Network Image',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.network(
            'https://th.bing.com/th/id/OIP.JalWe7EDPQBKCBYfVjd1rQAAAA?rs=1&pid=ImgDetMain',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
