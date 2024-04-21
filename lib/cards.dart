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
      backgroundColor: Color.fromARGB(255, 177, 177, 177),
      appBar: AppBar(
        title: Text(
          'Cards',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Color.fromARGB(255, 251, 252, 252),
          elevation: 10.0,
          child: Container(
            padding: EdgeInsets.all(10),
            height: 100,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Try not to become a man of success , but try to become a man of value',
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '-Albert Einstein',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
