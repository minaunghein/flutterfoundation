import 'package:flutter/material.dart';

Widget Profile(String name, String image,BuildContext context) {
  final WIDTH = MediaQuery.of(context).size.width / 6;
  return Container(
    padding: EdgeInsets.all(5),
    width: WIDTH,
    height: 100,
    color: Colors.green,
    child: Column(

      children: <Widget>[
         
         CircleAvatar(radius: 30,backgroundImage: AssetImage(image),),
        
    Text(name,style: TextStyle(color: Colors.white),)
    ],)
  );
}
