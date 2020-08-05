import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //functions
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Center(
            child: Text('XyloPhone'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.deepOrange, soundNum: 1),
              buildKey(color: Colors.deepPurple, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.red, soundNum: 4),
              buildKey(color: Colors.lightGreen, soundNum: 5),
              buildKey(color: Colors.brown, soundNum: 6),
              buildKey(color: Colors.indigo[300], soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
