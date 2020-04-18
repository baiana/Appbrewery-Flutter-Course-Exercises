import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: XylophonePage(),
        ),
      ),
    );
  }
}

class XylophonePage extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        displayKey(1, Colors.red, player),
        displayKey(2, Colors.orangeAccent, player),
        displayKey(3, Colors.yellow, player),
        displayKey(4, Colors.green, player),
        displayKey(5, Colors.green.shade900, player),
        displayKey(6, Colors.lightBlue, player),
        displayKey(7, Colors.purpleAccent, player),
      ],
    );
  }

  Expanded displayKey(int keyNumber, Color color, AudioCache player) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$keyNumber.wav');
        },
      ),
    );
  }
}
