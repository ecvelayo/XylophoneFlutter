import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophonePage()
          ),
        ),
      );
    }
}

class XylophonePage extends StatefulWidget {
  @override
  _XylophonePageState createState() => _XylophonePageState();
}

void playSound(int soundNum){
  final player = AudioCache();
  player.play('note$soundNum.wav');
}

Expanded buildKey(int num, Color color){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(num);
      },
    )
  );
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(1, Colors.red),
        buildKey(2, Colors.blue),
        buildKey(3, Colors.green),
        buildKey(4, Colors.amber),
        buildKey(5, Colors.teal),
        buildKey(6, Colors.blueGrey),
        buildKey(7, Colors.purple )
      ],
    );
  }
}
