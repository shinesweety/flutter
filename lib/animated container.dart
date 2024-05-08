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
  var _width = 0.0;
  var _height = 0.0;
  var _border = 0.0;
  var _br = 0.0;

  AnimationFunction() {
    setState(() {
      _width = _width == 0 ? 200.0 : 0.0;
      _height = _height == 0 ? 200.0 : 0.0;
    });
  }

  changeBorder() {
    setState(() {
      _border = _border == 0.0 ? 10.0 : 0.0;
    });
  }

  changeBorderRadius() {
    setState(() {
      _br = _br == 0.0 ? 100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Container',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15.0),
        height: 800,
        width: 500,
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeIn,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.red, width: _border),
                borderRadius: BorderRadius.circular(_br),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        (Color.fromARGB(255, 236, 131, 92)))),
                onPressed: () {
                  AnimationFunction();
                },
                child: Text('click me', style: TextStyle(color: Colors.black))),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        (Color.fromARGB(255, 117, 228, 213)))),
                onPressed: () {
                  changeBorder();
                },
                child: Text(
                  'Border',
                  style: TextStyle(color: Colors.black),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        (const Color.fromARGB(255, 211, 117, 228)))),
                onPressed: () {
                  changeBorderRadius();
                },
                child: Text(
                  'radius',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
