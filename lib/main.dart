import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Interest Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Interest Calculator"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Text("hello world"),
        ),
      ),
    );
  }
}
