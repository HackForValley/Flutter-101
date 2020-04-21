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
          
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
            title: Text(
              "My info"
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.person_add), onPressed: (){})
            ],
          ),
          body: Container(
           color: Colors.orange.shade500,
              child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: <Widget>[
                  Padding(padding: EdgeInsetsDirectional.only(top:1)),
                  Container(
                   
                    height:250,
                    width:250,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://avatars2.githubusercontent.com/u/56130227?s=460&u=9ac5d7e6a5f3b5dbfc688db949fa1a3c1209988f&v=4")),
                      borderRadius: BorderRadius.all(Radius.circular(125.0))
                    ),
                    
                    

                  ),
                  Padding(padding: EdgeInsetsDirectional.only(bottom:40)),
                  
                  Text("Vivek",style: TextStyle(fontSize:40,color:Colors.black87,fontStyle: FontStyle.italic,fontWeight: FontWeight.w900)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 98.0,
                    

                  ),
                  SizedBox(height: 30,),
                  Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.green,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 174.0,
                  ),
                  SizedBox(height: 20,),
                  Text("C | Python",style: TextStyle(fontSize:20,color:Colors.black87,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
                   Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 86.0,
                  ), 
                  SizedBox(height: 15,),    
                  Text("I do everything i love but in codes",style: TextStyle(fontSize:12,color:Colors.blue,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 175.0,
                  ),   
              ],
              ),
              ),
          )
          
        ),
    );
  }
}