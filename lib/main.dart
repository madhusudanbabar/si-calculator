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
  static var currencies = ["rupees", "dollars", "euros"];
  var selected = currencies[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fav City"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String string) {
                setState(() {
                  city = string;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter your favourite city",
                labelText: "City",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  "Your favourite city is ${city.length > 1 ? city : selected}"),
            ),
            DropdownButton<String>(
              items: currencies
                  .map((item) => DropdownMenuItem<String>(
                        child: Text(item),
                        value: item,
                      ))
                  .toList(),
              onChanged: (String val) {
                setState(() {
                  selected = val;
                });
              },
              value: selected,
            )
          ],
        ),
      ),
    );
  }
}
