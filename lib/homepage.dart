import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = new AudioCache();

  Expanded soundTile({Color color, int soundNumber, String text}) {
    return Expanded(
      child: new FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(2.5),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashColor: color,
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, bottom: 40.0, top: 16.4, right: 300.0),
          child: new Column(
            children: <Widget>[
              RotatedBox(quarterTurns: 1, child: new Icon(Icons.music_note)),
              RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  )),
            ],
          ),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          soundTile(color: Colors.red, soundNumber: 1, text: "A"),
          soundTile(color: Colors.orange, soundNumber: 2, text: "B"),
          soundTile(color: Colors.yellow, soundNumber: 3, text: "C"),
          soundTile(color: Colors.green, soundNumber: 4, text: "D"),
          soundTile(color: Colors.teal, soundNumber: 5, text: "E"),
          soundTile(color: Colors.blue, soundNumber: 6, text: "F"),
          soundTile(color: Colors.purple, soundNumber: 7, text: "G"),
        ],
      )),
    );
  }
}
