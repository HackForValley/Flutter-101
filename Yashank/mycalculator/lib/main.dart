import 'package:flutter/material.dart';
import 'dart:math';
var rng = new Random();
int sum=0;
 int num4=rng.nextInt(20);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor:Colors.green.shade700,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: "Let's Calculate",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,this.title}) : super(key: key);
final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int num1=0;
 int num2=0;
 int num3=0;
  String output="Output ";
  String result="Result :";

final TextEditingController t1 = new TextEditingController(text:"");
final TextEditingController t2 = new TextEditingController(text:"");
  void _add() {
    setState(() {
      num1=num4;
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void _subtract(){
    setState(() {
    
      num2=int.parse(t2.text);
      if(num1<num2){
        output="Error in input";
        sum=0;
      }
      else
      sum=num1-num2;
    });
  }
  void _multiply(){
    setState(() {
      
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void _divide(){
    setState(() {
      
      num2=int.parse(t2.text);
      if(num1==0 || num2==0)
      {
        output="Error in input";
        sum=0;
      }
      else
      sum=num1~/num2;
    });
  }
  void _answerCheck(){
    setState(() {
      num3=int.parse(t1.text);
      if(num1%2!=0)
      {
        num1=num1-0;
      }

      if(num1==num3)
      {
        result="Congratulations!!!";
      }
      else{
        result="OOPS It's incorrect";
      }
     
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenH= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color:Colors.greenAccent),),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
       child:ListView(
         
         children: <Widget>[
           SizedBox(height: screenH*0.04,),
            Card(color:Colors.green,child: Center(child: Padding(padding:EdgeInsets.all(25.0),child: Text("$output : $sum",style: TextStyle(fontSize: screenH*0.05),))),),
            SizedBox(height: screenH*0.02,),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,

              decoration: InputDecoration(

                hintText: "Input Value",
                hintStyle: TextStyle(color:Colors.red),
              ),
            ),
            SizedBox(height: screenH*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: _add,
                  child:Text("Add"),
                  color: Colors.green,
                ),
                MaterialButton(
                  onPressed: _subtract,
                  child:Text("Subtract"),
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: screenH*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: _multiply,
                  child:Text("Multiply"),
                  color: Colors.green,
                ),
                MaterialButton(
                  onPressed: _divide,
                  child:Text("Divide"),
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: screenH*0.01),
            Text("$result : ",style: TextStyle(color:Colors.green,fontSize:22),),
            SizedBox(height: screenH*0.01),
            
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,

              decoration: InputDecoration(

                hintText: "Your guess",
                hintStyle: TextStyle(color:Colors.red),
              ),
            ),
            MaterialButton(
                  onPressed: _answerCheck,
                  child:Text("Submit"),
                  color: Colors.green,
                ),

       ],
       ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
