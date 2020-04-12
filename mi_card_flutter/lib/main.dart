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
          child: Container(
            color: Colors.white,
            child: Text("Olha o texto aqui gente"),
          ),
        ),
      ),
    );
  }
}
