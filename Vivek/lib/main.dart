import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Me",
        theme: ThemeData(
           primarySwatch: Colors.green,
           backgroundColor: Colors.orange[200],
           

        ),
        home: Scaffold(
          backgroundColor: Colors.orange[400],
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
            

            child: Center(

              child: Column(
                
                
                children: <Widget>[
                
                  Text("Vivek",style: TextStyle(fontSize:40,color:Colors.black87,fontStyle: FontStyle.italic,fontWeight: FontWeight.w900)),
                  Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.green,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
                  Text("C | Python",style: TextStyle(fontSize:20,color:Colors.black87,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
                  Text("I do everything i love but in codes",style: TextStyle(fontSize:12,color:Colors.blue,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400)),
              ],
              ),
            ),
          )
          
        ),
    );
  }
}