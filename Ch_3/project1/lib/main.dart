import 'package:flutter/material.dart';
import 'package:project1/Pages/home.dart';
import 'package:project1/Pages/profile.dart';

void main()  {  
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Project1",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    home: Home(),
    routes: <String,WidgetBuilder>{
      "/Profile":(BuildContext context) => Profile() 
    },
    );
  }
}
