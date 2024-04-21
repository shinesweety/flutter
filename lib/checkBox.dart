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
  bool mon = false;
  bool tues = false;
  bool wed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Check Box',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('mon'),
                Checkbox(
                  value: mon,
                  onChanged: (value) {
                    setState(() {
                      mon = value!;
                    });
                  },
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('tues'),
                  Checkbox(
                    value: tues,
                    onChanged: (value) {
                      setState(() {
                        tues = value!;
                      });
                    },
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('wed'),
                      Checkbox(
                        value: wed,
                        onChanged: (value) {
                          setState(() {
                            wed = value!;
                          });
                        },
                      )
                    ],
                  )
                ])
              ],
            ),
          ]),
        ));
  }
}
