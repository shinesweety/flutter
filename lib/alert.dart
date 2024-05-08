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
  Future showdialogFun(BuildContext context, String msg) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          msg,
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text('OK')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert dialog',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showdialogFun(context, "It is a alert message");
            },
            child: Text(
              'click me',
              style: TextStyle(color: Colors.blue),
            )),
      ),
    );
  }
}
