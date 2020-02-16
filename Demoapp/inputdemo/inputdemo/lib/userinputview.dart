import 'package:flutter/material.dart';
import 'package:inputdemo/Models/user.dart';
import 'package:inputdemo/userinfoview.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedCity = 2;
  User user = User();
  bool isValidate(){
    return user.firstName != null && user.lastName != null && user.age != null && user.dob != null && user.phone != null;
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController(text: "Tim");
  
  @override
  void initState() {
    super.initState();
    firstNameController.addListener(firstNameListener);
  }

  firstNameListener(){
    print("First name is listening");
    print(firstNameController.text);
  }
  @override
  Widget build(BuildContext context) {

    var cityList = ["Yangon","Mandaly","TaungGyi"];


    DropdownMenuItem<int> item1 = DropdownMenuItem(child: Text("Yangon"),value: 1,);
    DropdownMenuItem<int> item2 = DropdownMenuItem(child: Text("Mandalay"),value: 2,);
    DropdownMenuItem<int> item3 = DropdownMenuItem(child: Text("TaungGyi"),value: 3,);
     List <DropdownMenuItem<int>> cityDropdownMenuItems = [item1,item2,item3];
    

    
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child:     Column(
            children: <Widget>[
              TextFormField(
                
                controller: firstNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
                onChanged: (string){
                  print("onChanged"+ string);
                  user.firstName = string ;
                },
                onEditingComplete: ( ){
                  print("Editing Completed");
                },
                validator: (value){
                  if (value.isEmpty){
                    return "Enter first name";
                  } else return null;
                },
                onSaved:(string){
                   print("Saving");
                  user.firstName = string ;
                } ,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
                onChanged: (string){
                  print("Changed"+ string);
                  user.lastName = string ;
                },
                onEditingComplete: ( ){
                  print("Editing Completed");
                },
                 validator: (value){
                  if (value.isEmpty){
                    return "Enter last name";
                  } else return null;
                },
                onSaved:(string){
                   
                  user.lastName = string ;
                } ,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Birthdate',
                ),
                onChanged: (string){
                  
                },
                onEditingComplete: ( ){
                  print("Editing Completed");
                },
                onSaved:(string){
                  
                  user.dob = string ;
                } ,
                 validator: (value){
                  if (value.isEmpty){
                    return "Enter birthdate";
                  } else return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
                onChanged: (string){
                  print("Changed"+ string);
                  user.age = double.parse(string);
                },
                onEditingComplete: ( ){
                  print("Editing Completed");
                },
                 validator: (value){
                  if (value.isEmpty || value == null ){
                    return "Enter age";
                  } else if ( double.parse(value) <= 17 ){
                    return "Age must be 18 or above";
                  }
                  else return null;
                },
                onSaved:(string){
                  
                  user.age = double.parse(string) ;
                } ,
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                ),
                onChanged: (string){
                 
                },
                onSaved:(string){
                  
                  user.phone = string ;
                } ,
                onEditingComplete: ( ){
                  print("Editing Completed");
                },
              ),

              DropdownButton(
                value: this.selectedCity,
                items:cityDropdownMenuItems,
                onChanged: (value){
                    print(value);
                    setState(() {
                      selectedCity = value;
                    });
                    
                },
              ),





              RaisedButton(child: Text("Confirm"),onPressed: (){
                 if (  _formKey.currentState.validate()  ) {
                    _formKey.currentState.save();
                    print("user is validated");
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> InfoPage(this.user)));
                 } else {
                   print("Incomplete data");
                 }
              },)
            ],
          ),
        ),),);
  }
}
