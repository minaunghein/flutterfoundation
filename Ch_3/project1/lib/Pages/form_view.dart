

import 'package:flutter/material.dart';

class FormView extends StatefulWidget{
    int formid;
    FormView({this.formid}); //THIS IS INITIALIZE

    @override
    _FormViewState createState() => _FormViewState(); //State preserve for widget

}


class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(title: Text("Fill the form"),),
      body: Container(child: Text("This is form with id: " + widget.formid.toString()),),
    );

  }
  
}