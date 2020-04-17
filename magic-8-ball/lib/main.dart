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
      appBar: AppBar(
        title: Text("Pergunte-me Tudo"),
        elevation: 6,
      ),
      body: Container(
        color: Colors.green.shade700,
      ),
    );
  }
}
