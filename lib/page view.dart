import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page view"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                page.animateToPage(--pageIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              },
              icon: Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () {
                page.animateToPage(++pageIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        children: [
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                "page-1",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Center(
              child: Text(
                "page-2",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                "page-3",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.lightGreen,
            child: Center(
              child: Text(
                "page-4",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
