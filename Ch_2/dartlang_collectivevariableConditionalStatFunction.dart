void main() {
 
  //Variables
  //Collective variables
  
  //Array - List 
  print("Array(List) ------------------------------------");
  var car1 = "AA1234";
  var car2 = "AA1235";
  List<String> cars = <String>   ["AA1234","AA1235" ];
  List<dynamic> myListing = [ "Cook",56.5,["MBA","BEngg"]];
  
  print(cars);
  print(cars[0]);
  cars.add( "AA1236");
  cars.insert(2,"AA1235A");
  
  print(cars);
  print(cars.runtimeType);
  print(cars.first); 
  print(cars.last);  
  
  
  bool i = true;
  //Add elements conditionally
  List<int> numbers = [1,2,3,4,5,if ( i   ) 6, for ( var j = 0 ; j< 10;j ++ ) j   ];
  print(numbers);
  var oddNumbers = [1,3,5,7,9,11,13,15,17 ];
  
  var allnum = numbers + oddNumbers;
  print(allnum);
  
  //Distribute    ...
  var allnum2 = [ 2,4,6,8,10,12,14,16, ... oddNumbers];
  print(allnum2);
  
  
  //Map (key,value)
  print("Map ------------------------------------");
  //Implicit Defined Type
  var mymap = { 
                "name" : "Cook",
                "age": 56.5 , 
                "degrees":["MBA","BEngg"]
              };
  
  //Explicit Defined Type for map
  Map<String,dynamic> mymap2 = {"classname":"FDC","Batch": 2 };
 
   //confused
  var avoidmapstyle = { 0:"num0",1:"num1",2:"num2"};
  print(avoidmapstyle[0]);
  
  print(mymap);
  print(mymap["name"]);// using [ ]
  print(mymap["name"].runtimeType);
  print(mymap["age"]);
  print(mymap["degrees"]);
  
  
  //Conditional if,else if, else 
  print("Conditional Statement ------------------------------------");
  var marks = 75;
  
  //Pass >= 40, fail
  //if Pass, Grading B - <= 50 , B 60, B+ 65 , A- 70, A 80, A+ 80,
  
  
  if ( marks >= 40 ) {
    print("Passed with marks $marks");
    
    if (marks <= 50) 
      print("Grading B-");
    else if (marks <=60) {  print("Gradiing B"); } 
    else if (marks <=65) {  print("Gradiing B+"); } 
    else if (marks <=70) {  print("Gradiing A-"); } 
    else if (marks <=80) {  print("Gradiing A"); } 
    else if (marks >80) {  print("Gradiing A+"); } 
    
    
  } else {
    print("Failed.Sorry");
  }
  
  
  
  //Looping - 
  //for, while , do while
  print("Looping ------------------------------------");
  print("Using while loop");
  var k = 0;    //1.must init 
  while (k < 10) {  //2.meet conditional to exit the loop
    print(k);  //
    k++;        //3.support operation to exit the loop
  }
  
  print("Using for loop");
  for (var i = 0; i < 10 ; i++  ) {
    print(i);
  }
  
  //array is paired in used with loop
  var mynums = [1,3,5,7,9,11,13,15,17 ];
  
  k = 0;
  while (k < mynums.length) {
    print(mynums[k]);
    mynums[k] = mynums[k] + 1;
    k++;
  }
  print(mynums);
  
  for (var i = 0; i < mynums.length ; i++  ) {
    mynums[i] = mynums[i] + 1;
    print(  mynums[i]);
  }
  
  //for each loop - make sure original array is untouched
  print("Using for each loop");
  for ( var e in mynums){
    print(e);
    e = e + 1;
  }
  print(mynums);
  
  //do while -> run at least one time;
  print("Using do while");
  var j = 10; 
  do {
    print(j);
    j++;
  }while(j < 5);
  
  //Function 
  print("Function ------------------------------------");
  //function with no input , no return
  //function with  inputs , no return
  //function with  optional inputs , no return,[]
  //function with  optional inputs n default value, no return
  //function with optional named inputs when you need to input value by name,{}
  
  //returnType NameofFunction([parameters]) { //block of code    }
  
  //Function Implementation
  void  greet(String timeStr, String name, [ String followExpression = "How are you?", String anotherExp ]) {
    print("Good $timeStr , $name");
    if(followExpression != null) print(followExpression);
    if(anotherExp != null) print(anotherExp);
  }
  
  //Function execution
  greet("Evening","Min","Hope you are good" );
  
  //if more than 3 input, considered named input function 
  //doformula(3,5.5,"stirr",100,98.8);
  
  doformula ({int a,double b,String mode,double degree = 80.0, double gravity }){
    print(a);
    print("Degree is $degree");
  }
  
  doformula(mode:"stirr",degree:100,gravity:98.8,a:3,b:5.5 );
  doformula(mode:"stirr", gravity:98.8,a:3,b:5.5 );
  
  
  //function with input and  return value
  double add(double num1,double num2) {
    return num1 + num2;
  }
  double substract(double num1,double num2) {
    return num1 - num2;
  }
  double multiply(double num1,double num2) {
    return num1 * num2;
  }
  double divide(double num1,double num2) {
    return num1 / num2  ;
  }
  
 var r1 = add(1,3);
 var r2 = substract(1,3);
 var r3 = multiply(1,3);
 var r4 = divide(1,3);
 print(r1);
 print(r2);
 print(r3);
 print(r4); 
  
  //Functions are first class citizen, can be treated like variable
  List<Function> myfuncs = [add,substract,multiply,divide];
 
  print(myfuncs);
  var r5 = myfuncs[1](30,50);
  print(r5);
  
  double calculate(double n1,double n2,double n3,Function dosomething ){
    var r = dosomething(n1,n2 );
    return r * 10;
  }
  
  var r6 = calculate(50,60,40,multiply); //not like (50,60,40,add(5,6))
  print(r6);
  
}
