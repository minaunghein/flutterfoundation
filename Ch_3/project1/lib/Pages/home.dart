import 'package:flutter/material.dart';
import 'package:project1/Pages/form_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Home"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          RaisedButton(
            child: Text("Profile"),
            onPressed: () {
              Navigator.of(context).pushNamed("/Profile",arguments:{"name":"Min","address":"Blk 13B, Htar Nar Street, Ahlone Tsp" } ) ;
              
            },
          ),
          RaisedButton(
            child: Text("Fill Form"),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => FormView(
                    formid: 500,
                  ),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
