import 'package:flutter/material.dart';

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
  

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body:Center(
        child:ListView(
          children:<Widget>[
            SizedBox(height:screenHeight*0.05),
            Card(
              child:Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 50 ),
              child:Text("Your Output is",style:TextStyle(color:Colors.orange,fontSize:screenWidth*0.05)),
              ),
              elevation:15,
               margin:EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenWidth*0.05),
              ),
            SizedBox(height:screenHeight*0.05),
            TextField(
            decoration: InputDecoration(
                hintText:"Enter first number: ",
                contentPadding: EdgeInsets.symmetric(horizontal:15, vertical:10),
              )
            ),
            SizedBox(height:screenHeight*0.05),
            TextField(
            decoration: InputDecoration(
                hintText:"Enter second number: ",
                contentPadding: EdgeInsets.symmetric(horizontal:15, vertical:10),
              )
              
            ),
            SizedBox(height:screenHeight*0.08),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:<Widget>[
               RaisedButton(onPressed:(){},child:Text("+",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.08)),color:Colors.green,
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10),),
              RaisedButton(onPressed:(){},child:Text("-",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.08)),color:Colors.green,
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10)),
            ],
            ),
            SizedBox(height:screenHeight*0.05),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:<Widget>[
               RaisedButton(onPressed:(){},child:Text("*",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.08)),color:Colors.green,
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10),),
              RaisedButton(onPressed:(){},child:Text("/",style:TextStyle(color:Colors.white,fontSize:screenWidth*0.08)),color:Colors.green,
                            elevation:15,padding: EdgeInsets.symmetric(horizontal:50,vertical:10)),
            ],
            ),
            SizedBox(height:screenHeight*0.05),
             
          ],
        ),
      ),
  );
  }
}
