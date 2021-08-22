import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class Myvideos extends StatefulWidget {
  const Myvideos({Key? key}) : super(key: key);

  @override
  _MyvideosState createState() => _MyvideosState();
}

class _MyvideosState extends State<Myvideos> {
  final String vidone = "https://youtu.be/EuY9h2injks";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Video Guides"),
        ),
        body: Column(
          children: [
            Container(
              child: BetterPlayer.network(vidone),
            ),
          ],
        ),
      ),
    );
  }
}
