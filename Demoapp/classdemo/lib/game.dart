import 'package:classdemo/dice.dart';
import 'package:flutter/material.dart';

class Game{
  var rollingCount = 0;
  List <Die> _dice; 
  Game(){
    var die1 = Die();
    var die2 = Die();
    var die3 = Die();
    die1.roll();
    die2.roll();
    die3.roll();
    _dice = [ die1 , die2,die3]   ;
  }

  reset(){
    rollingCount = 0;
  }

 List<int> roll(){
   rollingCount += 1;
   List<int> results = [];
    for (var die in _dice){
       results.add( die.roll());
    }

    return results;
  }

  int getSum(){
    int ttl = 0;
    for (var die in _dice){
      ttl += (die.currentNo + 1);
    }
    return ttl;
  }

  List <Widget> getPictures(){
    List <Widget> pics = [];
    for (var die in _dice){
       pics.add(Image(image: AssetImage("assets/${die.currentNo + 1 }.png"),));
    }
    return pics;
  }

  Widget getDiePicture(int dieno){
    return Image(
      
      image: AssetImage("assets/${ _dice[dieno].currentNo + 1 }.png"));
  }

}