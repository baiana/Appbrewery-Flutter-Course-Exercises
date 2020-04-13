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
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              radius: 64,
              backgroundImage: NetworkImage(
                  "https://cdn4.iconfinder.com/data/icons/linecon/512/photo-512.png"),
              backgroundColor: Colors.yellow[200],
            ),
            SizedBox(height: 12),
            Text(
              "User name",
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
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Colors.blueGrey.shade100),
            ),
            createNewUserDataCard(Icons.phone_iphone, "+555 00 0000-0000"),
            createNewUserDataCard(Icons.alternate_email, "user@email.com"),
            createNewUserDataCard(Icons.code, "@user (Github)")
          ],
        )),
      ),
    );
  }

  Card createNewUserDataCard(IconData icon, String text) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 28),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blueGrey[900],
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.w400,
              wordSpacing: 2,
              fontFamily: "Source Sans"),
        ),
      ),
    );
  }
}
