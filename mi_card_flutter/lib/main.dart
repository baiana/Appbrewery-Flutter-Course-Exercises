import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Text("COntainer 1"),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                color: Colors.pinkAccent,
                child: Text("Container 2"),
              ),
              Container(
                color: Colors.blueGrey,
                child: Text("Container 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
