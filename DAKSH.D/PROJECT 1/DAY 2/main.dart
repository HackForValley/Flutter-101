import 'dart:ui';

import 'package:flutter/material.dart';
void main() => runApp(day_2());
class day_2 extends StatelessWidget {
  const day_2({Key key}) :super(key: key);

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
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/1.jpg", height: 400, width: 300, filterQuality: FilterQuality.medium, fit: BoxFit.cover),
              Text("DAKSH.D", style: TextStyle(fontSize:50,color:Colors.red),),
              Container(
                color: Colors.deepOrangeAccent,
                height: 10,
                width: 200,
              ),
              SizedBox(height: 5.0),
              Container(
                color: Colors.blue,
                height: 10,
                width: 150
              ),
              SizedBox(height: 5.0),
              Container(
                  color: Colors.green,
                  height: 10,
                  width: 100
              ),
              Text("GBC-BCA", style: TextStyle(fontSize:40,color:Colors.blue)),
              Container(
                color: Colors.green,
                height: 10,
                width: 100,
              ),
              SizedBox(height: 5.0),
              Container(
                  color: Colors.blue,
                  height: 10,
                  width: 150
              ),
              SizedBox(height: 5.0),
              Container(
                  color: Colors.deepOrangeAccent,
                  height: 10,
                  width: 200
              ),
              Text("Imagination is more Important than Innovation", style: TextStyle(fontSize:30, color: Colors.green),),
                ],

              ),
          ),
        ),

    );
  }
}