import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 47, 14, 96),
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
        
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
                print('I got ball$ball!');
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
