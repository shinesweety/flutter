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
  String _value = '';
  void _onchange(String value) {
    setState(() {
      _value = 'on change :' + value;
    });
  }

  void _submit(String value) {
    setState(() {
      _value = 'on submit :' + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Field',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(_value),
          TextField(
            decoration: new InputDecoration(
                labelText: 'Enter name',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: 'Full name',
                icon: new Icon(Icons.people)),
            autocorrect: true,
            onChanged: _onchange,
            onSubmitted: _submit,
            keyboardType: TextInputType.text,
          )
        ],
      ),
    );
  }
}
