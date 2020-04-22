import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Harshit",
        theme: ThemeData(
           primarySwatch: Colors.pink,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
            title: Text(
              "My portfolio"
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.person_add), onPressed: (){})
            ],
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height:70.0),//Sized Box
                Container(
                   height:150.0,
                   width:150.0,
                   decoration:BoxDecoration(
                     image: DecorationImage( image: NetworkImage("https://avatars1.githubusercontent.com/u/57362661?s=400&u=a93e382336c76867301e6dc21cb948b9022c0cdc&v=4"),
                     ),//image 
                     borderRadius:  BorderRadius.all(Radius.circular(72.0)),
                   ),//decoration  
                ),//container
                SizedBox(height:30.0),//Sized Box
                Text("Harshit",style: TextStyle(fontSize:60,color:Colors.black),),
                Container(
                  color : Colors.green,
                  height : 2.0,
                  width : 180.0 ,
                ),//container
                SizedBox(height:10.0),//Sized Box
                Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.purple)),
                SizedBox(height:20.0),//Sized Box
                Text("C | Python",style: TextStyle(fontSize:40,color:Colors.red),),
                SizedBox(height:20.0),//Sized Box
                Text("😉 Moody 😉",style: TextStyle(fontSize:30,color:Colors.black)),
                SizedBox(height:20.0),//Sized Box
                Text("harshit0030.cse19@chitkara.edu.in",style: TextStyle(fontSize:30,color:Colors.black),),
                Container(
                  color : Colors.green,
                  height : 2.0,
                  width : 450.0 ,
                ),//container
              ],//Children
            ),//Column
          ),//body 
        ),//home
    );//runapp
  }//widgetbuild
}//myapp extends