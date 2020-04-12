import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 64,
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/18560467?s=460&u=779e0ca919ea9b6a737422786443e03b97ddce09&v=4'"),
              backgroundColor: Colors.yellow[200],
            ),
            SizedBox(height: 12),
            Text(
              "Ana luísa Dias",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Bebas neue"),
            ),
            Text(
              "Mobile Developer".toUpperCase(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Source Sans"),
            ),
          ],
        )),
      ),
    );
  }
}
