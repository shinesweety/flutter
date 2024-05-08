import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "simple alert",
      home: MyApp(),
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
          'Simple custom alert',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String title = "Text message";
            String msg = "simple custom alert message";
            showAlertDialog(context, title, msg);
          },
          child: Text(
            'click me',
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context, String title, String msg) {
  Widget okbtn = TextButton(
    onPressed: () {},
    child: Text('OK'),
  );
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      okbtn,
    ],
  );
  showDialog(
    context: context,
    builder: (context) {
      return alert;
    },
  );
}
