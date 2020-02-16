import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialappdemo/widgets/profile.dart';

class Home extends StatelessWidget {
  List<Map<String, String>> people = [
    {"name": "Lucy", "profile": "assets/p100.jpeg"},
    {"name": "Genifer", "profile": "assets/p101.jpeg"},
    {"name": "David", "profile": "assets/p102.jpeg"},
    {"name": "Lucy", "profile": "assets/p100.jpeg"},
    {"name": "Genifer", "profile": "assets/p101.jpeg"},
    {"name": "David", "profile": "assets/p102.jpeg"},
    {"name": "Lucy", "profile": "assets/p100.jpeg"},
    {"name": "Genifer", "profile": "assets/p101.jpeg"},
    {"name": "David", "profile": "assets/p102.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> persons = [];
    for (var p in people) {
      persons.add(Profile(p["name"], p["profile"],context ));
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: Text("Scrollable Action")
          //bottom <- use with Tabbar
          ),
      body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  
          Row(
        children: persons,
      ),),),
    );
  }
}
