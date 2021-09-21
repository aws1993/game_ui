import 'package:flutter/material.dart';
class GameInfo extends StatefulWidget {
  String urlFrommain;
  String tagfromMain;

  GameInfo({this.urlFrommain, this.tagfromMain});

  @override
  _GameInfoState createState() => _GameInfoState();
}

class _GameInfoState extends State<GameInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Game Info'), centerTitle: true,),
      body: ListView(
        children: [
          Hero(
              tag: widget.tagfromMain, child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.urlFrommain),
                fit: BoxFit.cover
              )
            ),
          ))
        ],
      ),
    );
  }
}
