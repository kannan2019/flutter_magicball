import 'dart:math';
import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballIndex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.amber[900],
        ),
        body: Center(
          child: Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballIndex.png'),
              onPressed: () {
                setState(() {
                  ballIndex = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
