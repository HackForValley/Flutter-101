import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Yashank",
        theme: ThemeData(
           primarySwatch: Colors.green,
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
                Text("Yashank",style: TextStyle(fontSize:40,color:Colors.deepOrangeAccent),),
                Text("CSE 4th Sem",style: TextStyle(fontSize:30,color:Colors.green.shade200)),
                Text("MSP Alpha 2 | Dsc Android Lead",style: TextStyle(fontSize:40,color:Colors.deepOrangeAccent),),
                Text("I code better with tea. Buy me a tea and will give you free advices 😉",style: TextStyle(fontSize:20,color:Colors.green.shade200)),
            ],
            ),
          ),
          
        ),
    );
  }
}