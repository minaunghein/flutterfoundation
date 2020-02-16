import 'dart:math';

class Die {
  int currentNo;

  //Constructor 
  Die({this.currentNo = 1 });

  //Methods
 int roll(){
   var random = Random();
   currentNo  = random.nextInt(5);
   return  currentNo ;
  }

}