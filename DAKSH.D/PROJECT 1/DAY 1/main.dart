import 'dart:ui';

import 'package:flutter/material.dart';
    void main() => runApp(flutter_app());
class flutter_app extends StatelessWidget {
  const flutter_app({Key key}) :super(key: key);

Widget build(BuildContext context)
{
  return MaterialApp
    (
    title: "DAKSH DUTT",
    theme: ThemeData
      (primarySwatch: Colors.blue, ),
      home: Scaffold(
            appBar: AppBar(
                leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
                title: Text("# Intro"),
                 actions: <Widget>[
                 IconButton(icon: Icon(Icons.search), onPressed: (){}),
                 IconButton(icon: Icon(Icons.person_add), onPressed: (){})
                                  ]
  ),
        body: Center(
          child: Column(
            children: <Widget>[
               Text("DAKSH.D", style: TextStyle(fontSize:50,color:Colors.red),),
               Text("GBC-BCA", style: TextStyle(fontSize:40,color:Colors.blue)),
               Text("Imagination is more Important than Innovation", style: TextStyle(fontSize:30, color: Colors.green),),
               Text("Coding is FUN:) , when you feel that the language feels EASY !!!!", style: TextStyle(fontSize:30, color: Colors.purple),),
  ],
  ),
  ),
  ),
);
}
}