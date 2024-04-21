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
          'Button Bar',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'cancel',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'reset',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'continue',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
              )
              /*IconButton(
                onPressed: () {
                  print('home');
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  print('add');
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  print('people');
                },
                icon: Icon(Icons.people),
              ),
              IconButton(
                onPressed: () {
                  print('search');
                },
                icon: Icon(Icons.search),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
