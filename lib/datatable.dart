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
          'Appbar demo',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: DataTable(columns: [
        DataColumn(
            label: Text(
          'Roll no',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
              fontSize: 15.0),
        )),
        DataColumn(
            label: Text(
          'Name',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
              fontSize: 15.0),
        )),
        DataColumn(
            label: Text(
          'Age',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
              fontSize: 15.0),
        ))
      ], rows: [
        DataRow(cells: [
          DataCell(Text('A001')),
          DataCell(Text('Ram')),
          DataCell(Text('20'))
        ]),
        DataRow(cells: [
          DataCell(Text('A002')),
          DataCell(Text('Sam')),
          DataCell(Text('22'))
        ]),
        DataRow(cells: [
          DataCell(Text('A003')),
          DataCell(Text('Raj')),
          DataCell(Text('25'))
        ]),
      ]),
    );
  }
}
