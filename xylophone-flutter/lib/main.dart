import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  Expanded buildKey({Color colorAttr, int noteNo}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNo);
        },
        style: TextButton.styleFrom(backgroundColor: colorAttr),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(colorAttr: Colors.red, noteNo: 1),
              buildKey(colorAttr: Colors.orange, noteNo: 2),
              buildKey(colorAttr: Colors.yellow, noteNo: 3),
              buildKey(colorAttr: Colors.green, noteNo: 4),
              buildKey(colorAttr: Colors.teal, noteNo: 5),
              buildKey(colorAttr: Colors.blue, noteNo: 6),
              buildKey(colorAttr: Colors.purple, noteNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
