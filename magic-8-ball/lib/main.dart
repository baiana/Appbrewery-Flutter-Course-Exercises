import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BallState();
}

class _BallState extends State<Ball> {
  bool _visible = true;
  double opacity = 1;
  int ballAnswer = 1;

  @override
  Widget build(BuildContext context) {
    opacity = _visible ? 1.0 : 0.0;
    return AnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 300),
      onEnd: displayAnswer,
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballAnswer.png'),
          onPressed: () {
            setState(() {
              _visible = false;
            });
          },
        ),
      ),
    );
  }

  void displayAnswer() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
      _visible = true;
    });
  }
}
