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
        primarySwatch: Colors.indigo,
        accentColor:Colors.white,
      ),
      home: MyHomePage(title: 'Lets Play'),
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
  String result=" ";

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
      num1=num4;
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
      num1=num4;
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void _divide(){
    setState(() {
      num1=num4;
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
    
    return Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title , style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold ),),
      ),
      body: 

      Container(
        color:Colors.black,
        child:SingleChildScrollView(physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height:40.0),
           Card(color: Colors.indigo,shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white), ), child: Padding(padding:EdgeInsets.symmetric(horizontal:75.0,vertical:15 ),child: Text("$output : $sum" ,style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold ),))),
            SizedBox(height:20.0),
            Padding(padding: EdgeInsets.all(35.0), child:
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
               enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                   ),  
                 border: OutlineInputBorder(),
                 hintText: 'Enter any number',
                 hintStyle:TextStyle(color: Colors.red.shade200),
            ),
            ),
            ),      
            SizedBox(height:20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              MaterialButton(
                 onPressed:_add,
                 textColor: Colors.white,
                 shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white) ),
                 color:Colors.indigo.shade800,
                 padding: const EdgeInsets.all(10.0),
                 
                 child: const Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
               MaterialButton(
                 onPressed:_subtract,
                 shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white) ),
                 textColor: Colors.white,
                 color:Colors.indigo.shade800,
                 padding: const EdgeInsets.all(10.0),
                 child: const Text('-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
           ],
           ),
           SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
               MaterialButton(
                 onPressed: _multiply,
                 shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white), ),
                 textColor: Colors.white,
                 color:Colors.indigo.shade800,
                 padding: const EdgeInsets.all(10.0),
                 child: const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
               MaterialButton(
                  onPressed: _divide,
                 textColor: Colors.white,
                 shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white) ),
                 color:Colors.indigo.shade800,
                 padding: const EdgeInsets.all(10.0),
                 child: const Text('/',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
             ],
           ), 
            SizedBox(height:20.0),
            Text("$result ",style: TextStyle(color:Colors.red.shade400,fontSize:25),),
            Padding(padding: EdgeInsets.symmetric(horizontal:35.0,vertical:25.0), child:
            TextField(
              controller: t1,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
               enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                   ),  
                 border: OutlineInputBorder(),
                 hintText: 'Your guess',
                 hintStyle:TextStyle(color: Colors.red.shade200),
            ),
            ),
            ),
          
            MaterialButton(
                 onPressed: _answerCheck,
                 textColor: Colors.white,
                 color:Colors.indigo.shade800,
                 padding: const EdgeInsets.symmetric(horizontal:105.0,vertical:15 ),
                 shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white) ),
                 child: const Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
          ],
        ),
      ),
      ),
     
      
    );
  }
}
 