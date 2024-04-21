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
          'Single Child Scroll View',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      /*body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.purpleAccent,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.pink,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.orange,
            )
          ],
        ),
      ),*/
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.purpleAccent,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.pink,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
