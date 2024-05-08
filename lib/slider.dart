import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Slider(
          value: rate,
          onChanged: (newRate) {
            setState(() {
              rate = newRate;
            });
          },
          min: 0,
          max: 100,
          divisions: 4,
          label: "$rate",
        ),
      ),
    );
  }
}
