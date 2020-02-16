import 'dart:async';

import 'package:classdemo/game.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Game game = Game();
  final MAXCOUNT = 15;
  String resultText = "Click Roll";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice"),
      ),
      backgroundColor: Colors.red,
      body: Center(
         
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultText ),
          game.getDiePicture(0),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [game.getDiePicture(1), game.getDiePicture(2)]),
          Container(
            margin: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text("Roll !!!"),
              onPressed:   (  game.rollingCount == 0 || game.rollingCount >= MAXCOUNT ) ?  () {
                Timer.periodic(Duration(milliseconds: 200), (timer) {
                  if (game.rollingCount >= MAXCOUNT){
                    timer.cancel();
                    setState(() {
                       game.reset();
                    });
                   
                    
                    
                  }
                  setState(() {
                    game.roll();
                    resultText = "Total ${game.getSum()}";
                  });
                });
              }: null ,
            ),
          ),
        ],
      )),
    );
  }
}
