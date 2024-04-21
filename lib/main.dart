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
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('clicked the icon');
          },
        ),*/
        title: Text(
          'Appbar demo',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,

        /*actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],*/
        /* flexibleSpace: SafeArea(
            child: Icon(
              Icons.camera,
              color: Colors.white,
              size: 35.0,
            ),
          ),*/
        /*bottom: PreferredSize(
            preferredSize: Size.fromHeight(75.0),
            child: Container(
              color: Colors.grey,
              height: 75.0,
              width: double.infinity,
              child: Text(
                'Preferred size',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            )),*/
      ),
    );
  }
}
