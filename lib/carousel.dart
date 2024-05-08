import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
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
          'Image carousel',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          child: AnotherCarousel(
            boxFit: BoxFit.fill,
            images: const [
              AssetImage('assets/images/i1.jpeg'),
              AssetImage('assets/images/i2.jpeg'),
              AssetImage('assets/images/i3.jpeg'),
              AssetImage('assets/images/i4.jpeg'),
            ],
            autoplay: false,
          ),
        ),
      ),
    );
  }
}
