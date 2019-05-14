import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
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
            children: <Widget>[
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.teal),
              buildKey(noteNumber: 6, color: Colors.blue),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
