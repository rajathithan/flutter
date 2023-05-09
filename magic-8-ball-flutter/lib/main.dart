import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballnumber = 1;
  void _changeBall() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: TextButton(
        child: Image.asset('images/ball$ballnumber.png'),
        onPressed: () {
          _changeBall();
        },
      ),
    ));
  }
}
