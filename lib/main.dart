import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(instrument());
}

class instrument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: instrumentPage(),
      ),
    );
  }
}

class instrumentPage extends StatelessWidget {
  final oynatici = AudioCache();

  void sesiCal(String ses) {
    oynatici.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 6,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildAscPad('bongo', Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildAscPad('bip', Colors.redAccent),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildAscPad('clap1', Colors.purpleAccent),
                  ),
                  Expanded(
                    child: buildAscPad('clap2', Colors.blueGrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildAscPad('clap3', Colors.orangeAccent),
                  ),
                  Expanded(
                    child: buildAscPad('crash', Colors.cyanAccent),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildAscPad('how', Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildAscPad('ridebel', Colors.brown),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildAscPad(String ses, Color renk) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 3,
        ),
        shadowColor: Colors.black,
      ),
      onPressed: () {
        sesiCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
