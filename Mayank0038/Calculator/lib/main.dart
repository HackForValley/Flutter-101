import 'package:flutter/material.dart';
//import 'dart:math';
double sum=0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.cyan,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Calculator'),
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
 double num2=0;
  String mess="";
String temp="";

final TextEditingController t1 = new TextEditingController(text:"");
final TextEditingController t2 = new TextEditingController(text:"");
  void _add() {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1+num2;
      temp=sum.toString();
    });
  }
  void _subtract(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      if(num1<num2){
        sum=(-1)*(num2-num1);
        temp=sum.toString();
       }
      else{
      sum=num1-num2;
      sum=sum.toDouble();
      temp=sum.toString();}
    });
  }
  void _multiply(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1*num2;
      temp=sum.toString();
    });
  }
  void _divide(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      if(num2==0)
      {
        temp="NaN";
      }
      else{
      sum=num1/num2;
      temp=sum.toString();}
    });
  }
  
void _message(){
    setState(() {
      temp="";
      
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenH=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Padding(padding:EdgeInsets.only(left: 10.0),
               child:Column(
                 children: <Widget>[
              Text("Calculator",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 22,color: Colors.orangeAccent)),
                    
              Text(
                "for HackForValley",
                style: TextStyle(fontFamily: 'Raleway' , fontSize: 13,color: Colors.orange),
              )])),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
    child: Icon(Icons.refresh),
    onPressed: _message,
   ),
   bottomNavigationBar: BottomAppBar(
     color:Colors.yellow,
     child:Container(height: 50.0),
    
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: ListView(
          
          children: <Widget>[
             SizedBox(height:screenH*0.05),

            Card(
              child:Padding(padding:EdgeInsets.all(50.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                 Text("Output : $temp ",style:TextStyle(fontSize: 30.0,color: Colors.limeAccent),),
                ],
                ),
            ),),
            SizedBox(height:screenH*0.06),
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(
                hintText:"Input first Value",hintStyle: TextStyle(color:Colors.deepOrangeAccent),
              ),
              ),
               TextField(
                 keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                hintText:"Input second Value",hintStyle: TextStyle(color:Colors.deepOrangeAccent),
              ),
              ),

              SizedBox(height:screenH*0.07),
                
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(onPressed: _add,
                      child:Text("+",style:TextStyle(fontSize: 30.0)),
                      color: Colors.green,
                      ),

                       MaterialButton(onPressed: _subtract,
                      child:Text("-",style:TextStyle(fontSize: 30.0)),
                      color: Colors.green,
                      ),
                    ],
                  ),
               SizedBox(height:screenH*0.05), 
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(onPressed: _multiply,
                  child:Text("*",style:TextStyle(fontSize: 30.0)),
                  color: Colors.green,
                  ),

                   MaterialButton(onPressed: _divide,
                  child:Text("/",style:TextStyle(fontSize: 30.0)),
                  color: Colors.green,
                  ),
                ],
              ),

            ],
          ),  
          
          ],
        ),
      ),
   
    );
  }
}
