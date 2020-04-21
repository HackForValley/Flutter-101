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
                Text(""),
                Text(""),
                Text(""),
                Text(""),
                Text(""),
                Text(""),
                Text("Harshit",style: TextStyle(fontSize:60,color:Colors.black),),
                Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.purple)),
                Text(""),
                Text(""),
                Text("C | Python",style: TextStyle(fontSize:40,color:Colors.red),),
                Text(""),
                Text(""),
                Text("😉 Moody 😉",style: TextStyle(fontSize:30,color:Colors.black)),
            ],
            ),
          ),
          
        ),
    );
  }
}
