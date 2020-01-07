import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 12.0,
          backgroundColor: Colors.black,
          title: Text("Ask Me Anything"),
        ),
        body: EightBall(),
        backgroundColor: Colors.white10,
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  var ballImage = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              var rand = Random().nextInt(5) + 1;
              setState(() {
                ballImage = rand;
              });
            },
            child: Image.asset('images/ball$ballImage.png')),
      ),
    );
  }
}
