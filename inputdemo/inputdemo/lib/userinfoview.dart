import 'package:flutter/material.dart';
import 'package:inputdemo/Models/user.dart';

class InfoPage extends StatefulWidget {

  User user;
  InfoPage(this.user )  ;

  

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  User _user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _user = widget.user;
  
  }
  @override
  Widget build(BuildContext context) {
      widget.user.firstName = "IAMCHANGEOUTSIDEDATA";
    return Scaffold(
      appBar: AppBar(title: Text("User Info"),),
      body: Column(children: <Widget>[
        Text( _user.firstName),
        Text(_user.lastName),
        Text(_user.dob),
        Text(_user.age.toString()),
        Text(_user.phone),

        

      ],),
      
      
      
       );
  }


}