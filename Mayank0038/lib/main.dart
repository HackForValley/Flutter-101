import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Mayank",
      theme: ThemeData(
         primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar:AppBar(
          title: Text("My Portfolio"), //text
          leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.person_add), onPressed: (){}),
          ],
        ),
        body: Center(
            child:Column(
            children: <Widget>[
              Text(""),
              Text("Hey! everyone", style: TextStyle(fontSize:55,color:Colors.blueAccent),),
              Text(""),
              Text(""),
            Text("Mayank",style: TextStyle(fontSize:50,color:Colors.redAccent),),
            Text(""),
            Text("CSE 2th Sem",style: TextStyle(fontSize:30,color:Colors.deepPurple),),
            Text("",style: TextStyle(fontSize:40,color:Colors.deepOrangeAccent),),
            Text("I'm not lazy, i'm just on energy saving mode 😉",style: TextStyle(fontSize:40,color:Colors.cyanAccent),),
          
            ],
          ),
        ),
      ),
         );
   }
}