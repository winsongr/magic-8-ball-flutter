import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNo = 3;

  void bno() {
    setState(() {
      ballNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            bno();
          },
          child: Image(
            image: AssetImage('images/ball$ballNo.png'),
          )),
    );
  }
}
