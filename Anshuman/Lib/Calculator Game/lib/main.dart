import 'package:flutter/material.dart';
import 'dart:math';

  
var rng = new Random();
double sum=0;
int num4=rng.nextInt(20);


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title:"Calculator"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1=0;
  double num2;
  double num3;
  
  
  String result="Result ";
  String answer="Answer";


final TextEditingController t1 = new TextEditingController(text:"");
final TextEditingController t2 = new TextEditingController(text:"");

void _add(){
  setState(() {
    
    num2=double.parse(t2.text);
    sum=(num4+num2);
  });
}
void _subtract(){
  setState(() {
    num2=double.parse(t2.text);
    if(num4>num2)
    {
      result="Error";
    }
    else
    sum=(num2-num4);
  });
}
void _multiply(){
  setState(() {
    num2=double.parse(t2.text);
    sum=(num4*num2);
  });
}
void _divide(){
  setState(() {
    num2=double.parse(t2.text);
    if(num4==0){
     result="Retry";
     sum=0000;
    }
    else if(num2 == 0){
      result="Retry";
     sum=0000;
    }
    else {
      sum=(num4/num2) ;

    }
   
  });
}
void _submit(){
  setState(() {
    num3=double.parse(t1.text);
    if(num4%2!=0)
    {
      num4=num4-0;
    }
    if(num4==num3)
    {
      answer="Yes Right Answer !!";
    }
    else{
      answer="Sorry Worng Answer !!";
    }

  });
}


  @override
  Widget build(BuildContext context) {
   double screenH= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Calculator Game",style: TextStyle(fontSize:30,color: Colors.lightBlue[100]),),
      ),
      body: Center(
       
        child: ListView(
          
           padding: EdgeInsets.all(35),

          children: <Widget>[
            SizedBox(height: screenH*0.1),
            
           Container(color:Colors.lightBlue[100],child: Center(child: Card(child: Padding(padding:EdgeInsets.symmetric(vertical: 40,horizontal:50),child:Text("$result : $sum",style: TextStyle(fontSize:40,color:Colors.tealAccent),),)))),
           SizedBox(height: screenH*0.1),
             TextField(
               keyboardType: TextInputType.number,
               controller: t2,
               decoration: InputDecoration(
                 
                 hintText: "Value",
                 hintStyle: TextStyle( color: Colors.tealAccent),

               ),
             ),
          

             SizedBox(height: screenH*0.1),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.black87,
                    color: Colors.cyanAccent,
                    onPressed: _add,
                    child: new Text("Add"),
              
                 ),

                RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                   textColor: Colors.black87,
                    color: Colors.cyanAccent,
                    onPressed:_subtract,
                    child: new Text("Subtract"),

                 ), 
               ],
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: _multiply,
                    textColor: Colors.black87,
                    color: Colors.cyanAccent,
                    child: Text("Multiply"),

                    ),
                    RaisedButton(
                    onPressed: _divide,
                    textColor: Colors.black87,
                    color: Colors.cyanAccent,
                    child: Text("Divide"), 
                    ), 
                ],
              ),

               SizedBox(height: screenH*0.06),
               Center(child: Text("$answer",style:TextStyle(fontSize: 20,color:Colors.lime),)),
                SizedBox(height: screenH*0.01),
               
               TextField(
                 keyboardType: TextInputType.number,
                 controller: t1,
               decoration: InputDecoration(
                 hintText: "Your Guess",
                 hintStyle: TextStyle(color:Colors.tealAccent),
               ),
                             

             ),
                            SizedBox(height: screenH*0.01),
                             RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.black87,
                    color: Colors.cyanAccent,
                    onPressed:_submit,
                    child: new Text("Submit"),

                 ), 

                   

             ],
             
        ),
      ),


     
    );
  }
}
