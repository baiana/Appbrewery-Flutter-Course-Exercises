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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        displayKey(1, Colors.red),
        displayKey(2, Colors.orangeAccent),
        displayKey(3, Colors.yellow),
        displayKey(4, Colors.green),
        displayKey(5, Colors.green.shade900),
        displayKey(6, Colors.lightBlue),
        displayKey(7, Colors.purpleAccent),
      ],
    );
  }

  void playSound(String sound) {
    AudioCache().play(sound);
  }

  Expanded displayKey(int keyNumber, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound('note$keyNumber.wav');
        },
      ),
    );
  }
}
