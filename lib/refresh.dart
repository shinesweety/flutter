import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  Future loadList() async {
    await Future.delayed(Duration(milliseconds: 3000));
    final random = Random();
    final data = List.generate(20, (index) => random.nextInt(100));
    setState(() {
      this.data = data;
    });
  }

  @override
  void initState() {
    loadList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Refresh Indicator'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: RefreshIndicator(
              backgroundColor: Colors.teal,
              color: Colors.white,
              strokeWidth: 2,
              edgeOffset: 20,
              displacement: 200,
              onRefresh: () async {
                await loadList();
              },
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index].toString(),
                            style: TextStyle(fontSize: 35),
                          ),
                        ],
                      ),
                    );
                  })),
        ));
  }
}
