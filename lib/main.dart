import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((Xylophone()));
}

class Xylophone extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color color, int sound}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(sound);
        },
        style: TextButton.styleFrom(backgroundColor: color),
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
            children: [
              buildkey(color: Colors.red, sound: 1),
              buildkey(color: Colors.orange[700], sound: 2),
              buildkey(color: Colors.yellowAccent, sound: 3),
              buildkey(color: Colors.greenAccent[400], sound: 4),
              buildkey(color: Colors.blue, sound: 5),
              buildkey(color: Colors.indigo, sound: 6),
              buildkey(color: Colors.purpleAccent[400], sound: 7),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
