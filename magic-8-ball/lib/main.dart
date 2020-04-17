import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        theme: ThemeData.dark(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      appBar: AppBar(
        title: Text("Pergunte-me Tudo"),
        elevation: 6,
      ),
      body: Container(
        color: ,
      ),
    );
  }
}
