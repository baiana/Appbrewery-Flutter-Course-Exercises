import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
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
                  letterSpacing: 2,
                  fontSize: 26,
                  color: Colors.blueGrey[50],
                  fontWeight: FontWeight.normal,
                  fontFamily: "Bebas neue"),
            ),
            Text(
              "Mobile Developer".toUpperCase(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Source Sans"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 22,horizontal: 28),
              padding: EdgeInsets.all(8),
              color: Colors.blueGrey[100],
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone,
                    size: 20,
                    color: Colors.blueGrey[900],
                  ),
                  SizedBox(width: 16),
                  Text(
                    "+555 00 8800-0099",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: "Source Sans"),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }


}
