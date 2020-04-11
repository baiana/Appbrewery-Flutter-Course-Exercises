import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text("Eu sou Rica"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://i.pinimg.com/originals/53/a3/58/53a358b2538861e52f68a82a2378b190.gif"),
        ),
      ),
    ),
  ));
}
