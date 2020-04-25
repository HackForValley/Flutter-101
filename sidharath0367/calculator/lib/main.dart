

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.white,
        brightness: Brightness.dark
      ),
      home: MyHomePage(title: '            Calculator'),
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
  int _counter = 0;
  double n1=0,n2=0,sum=0;
  double num1=0,num2=0;
  String output="OUTPUT : ";
final TextEditingController t1= new TextEditingController();
final TextEditingController t2= new TextEditingController();
  void add() {
    setState(() {
     num1=double.parse(t1.text);
     num2=double.parse(t2.text);
     output="OUTPUT : ";
     sum=num1+num2;
    });
    
  }
 void sub() {
    setState(() {
     num1=double.parse(t1.text);
     num2=double.parse(t2.text);
     output="OUTPUT : ";
     sum=num1-num2;
    });
    
  }
   void mult() {
    setState(() {
     num1=double.parse(t1.text);
     num2=double.parse(t2.text);
     output="OUTPUT : ";
     sum=num1*num2;
    });
    
  }
   void div() {
    setState(() {
     n1=double.parse(t1.text);
     n2=double.parse(t2.text);
     if(n2==0){
       output="Error : NOT DIVISIBLE BY ";
       sum=0;
     }
     else{
     output="OUTPUT : ";
     sum=n1/n2;}
    });
    
  }



  @override
  Widget build(BuildContext context) {
    double screenh=MediaQuery.of(context).size.height;
   // double screenw=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
       // backgroundColor:Color.fromRGBO(230, 230, 230, 1),
      leading: Image.network("https://img.icons8.com/nolan/64/calculator.png"),
         title: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: Colors.white),),
      ),
      body: Center(
        child :SingleChildScrollView(
         Container( 
              decoration: BoxDecoration(
                border: Border.all()
              ),
            height: screenh*1,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
             child:Padding(padding:EdgeInsets.all(50),child: Text("$output $sum",style:TextStyle(fontSize: 25,fontStyle: FontStyle.italic) ,),),
            elevation: 15,
            ),
            SizedBox(height: screenh*0.05,),
            Container( 
              decoration: BoxDecoration(
                border: Border.all()
              ),
            height: screenh*0.1,
            child :TextField(  cursorColor: Colors.white,
            controller: t1,
            keyboardType:TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                hintText: "Input first no.",
              
              ),
            ),
            ),
            SizedBox(height: screenh*0.05,),
            Container( 
              decoration: BoxDecoration(
                border: Border.all()
              ),
            height: screenh*0.1,
            child :TextField(  cursorColor: Colors.white,
            controller: t2,
            keyboardType:TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                hintText: "Input second no.",
              ),
            ),
            ),
            SizedBox(height: screenh*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(onPressed:add,
                child: Image.network("https://img.icons8.com/nolan/64/plus.png"),
                color: Colors.blueGrey,),
                MaterialButton(onPressed: sub,
                child: Image.network("https://img.icons8.com/nolan/64/minus.png"),
                color: Colors.blueGrey,),
              ],
            ),
             SizedBox(height: screenh*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(onPressed: mult,
                child: Image.network("https://img.icons8.com/nolan/64/multiply.png"),
                color: Colors.blueGrey,),
                MaterialButton(onPressed: div,
                child: Image.network("https://img.icons8.com/nolan/64/divide.png"),
                color: Colors.blueGrey,),
              ],
            ),
          ],
        ),
        ),
      ),
    
     
          );
  }
}
