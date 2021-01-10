import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Simple Interest Calculator",
        debugShowCheckedModeBanner: false,
        home: FavCity());
  }
}

class FavCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavCity();
  }
}

class _FavCity extends State<FavCity> {
  String city = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fav City"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String string) {
                setState(() {
                  city = string;
                });
              },
            ),
            Text("Your favourite city is $city")
          ],
        ),
      ),
    );
  }
}