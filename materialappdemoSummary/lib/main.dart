import 'package:flutter/material.dart';
import 'package:materialappdemo/home.dart';

void main() => runApp(
      MaterialApp(
        
        home:  Home(),
        theme:
            ThemeData(buttonColor: Colors.cyan, primaryColor: Colors.blueGrey),
        routes: <String, Widget Function(BuildContext context)>{
          //"/":(BuildContext context) { return Container(color: Colors.blue,);},
          "/About": (BuildContext context) {
            return Container(
              color: Colors.red,
            );
          },
          "/Splash": (BuildContext context) {
            return Container(
              color: Colors.green,
            );
          }
        },
        
      
      
      
      )
      
      ,
    );
