import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/Pages/Widgets/voucher.dart';

class Profile extends StatelessWidget {
  @override

  

  Widget build(BuildContext context) {
    Map<String, String> args = ModalRoute.of(context).settings.arguments;
    print(args["name"]);

    final HALFWIDTH = MediaQuery.of(context).size.width / 2.5;
    var studentList = ["Mr A","Mr B","Mr C","Mr D","Mr E"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
          // color: Colors.green,
          margin: EdgeInsets.all(10),
          child: Image.asset("images/profile.jpg",width: 100,height: 90,)     )
           
    );
  }
}
