import 'package:flutter/material.dart';
import 'dart:math';
var rng = new Random();
 String num4=rng.nextInt(100).toString();
double sum=0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
        brightness:Brightness.dark,
        accentColor: Colors.orange,
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
    double num3=0;
    final TextEditingController t1=new TextEditingController(text:"");
    final TextEditingController t2=new TextEditingController(text:"");
    String output="Output : ";
    String result="";
   
    
    void _add()
    {
      setState((){
      num1=double.parse(num4);
      num2=double.parse(t2.text);
      sum=num1+num2;
      output="Output : ";
      });
    }
    void _subtract()
    {
      setState((){
      num1=double.parse(num4);
      num2=double.parse(t2.text);
      if(num1<num2)
      {
        output="Error : ";
        sum=0;
      }
      else
      {
        output="Output : ";
        sum=num1-num2;
      }
      });
    }
    void _multiply(){
      setState((){
      num1=double.parse(num4);
      num2=double.parse(t2.text);
      sum=num1*num2;
      output="Output: ";
      });
    }
    void _divide()
    {
      setState((){
      num1=double.parse(num4);
      num2=double.parse(t2.text);
      if(num1<num2){
        output="Error : ";
        sum=0;
      }
      else if(num2==0)
      {
        output="Error : ";
        sum=0;
      }
      else
        {
        sum=num1/num2;
        output="Output : ";
      }
     
      });
    }
    void _checkAnswer()
    {
      setState((){
      num3=double.parse(t1.text);
    
           if(num3==num1)
        result="Congratulations!!!";
      else
        result="Oops! It's incorrect";
        
      });
    }
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title,style:TextStyle(fontSize:screenWidth*0.1,color:Colors.orange[200])),
      ),
      body:Container(
        padding:EdgeInsets.all(30),
        
        child:ListView(
          children:<Widget>[
            SizedBox(height:screenHeight*0.05),
            Card(
             
              child:Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 50 ),
              child:Text("$output$sum",style:TextStyle(color:Colors.yellow,fontSize:screenWidth*0.08)),
              ),
              elevation:15,
               margin:EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenWidth*0.05),
              ),
            
            SizedBox(height:screenHeight*0.05),
            TextField(
              keyboardType:TextInputType.number,
              controller:t2,
            decoration: InputDecoration(
                hintText:"Input Value ",
              
                hintStyle:TextStyle(color:Colors.green,fontSize:20),
                contentPadding: EdgeInsets.symmetric(horizontal:15, vertical:10),
              )
              
            ),
            SizedBox(height:screenHeight*0.08),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:<Widget>[
               MaterialButton(onPressed:_add,child:Text("+",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.05)),
                            color:Colors.red[500],
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10),),
              MaterialButton(onPressed:_subtract,child:Text("-",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.05)),color:Colors.red[500],
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10)),
            ],
            ),
            SizedBox(height:screenHeight*0.05),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:<Widget>[
               MaterialButton(onPressed:_multiply,
         child:Text("*",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.05)),color:Colors.red[500],
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10),),
              MaterialButton(onPressed:_divide,
                           child:Text("/",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.05)),color:Colors.red[500],
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10)),
            ],
            ),
            SizedBox(height:screenHeight*0.05),
             
            TextField(
              keyboardType:TextInputType.number,
              controller:t1,
            decoration: InputDecoration(
                hintText:"Your answer", 
                hintStyle:TextStyle(color:Colors.green,fontSize:20),
                contentPadding: EdgeInsets.symmetric(horizontal:15, vertical:10),
              )
              
            ),
            SizedBox(height:screenHeight*0.02),
            Padding(padding:EdgeInsets.symmetric(horizontal:30,vertical:15),
            child:Text("$result",style:TextStyle(fontSize:0.08*screenWidth,color:Colors.orange,)),),
            SizedBox(height:0.02*screenHeight),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:<Widget>[
             MaterialButton(onPressed:_checkAnswer,child:Text("Submit",
                                                            style:TextStyle(fontSize:screenWidth*0.05)),color:Colors.red[500],
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10),),
                ],
              ),
            
          ],
        ),
      ),
  );
  }
}
