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
           primarySwatch: Colors.deepPurple,
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
          body: Container(
            color:Colors.deepPurple[100],
            child:SingleChildScrollView(physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height:40.0),//Sized Box
                Container(
                   height:250.0,
                   width:250.0,
                   decoration:BoxDecoration(
                     image: DecorationImage( image: NetworkImage("https://avatars1.githubusercontent.com/u/57362661?s=400&u=a93e382336c76867301e6dc21cb948b9022c0cdc&v=4"),
                     ),//image 
                     borderRadius:  BorderRadius.all(Radius.circular(120.0)),
                   ),//decoration  
                ),//container
                SizedBox(height:30.0),//Sized Box
                Text("Harshit",style: TextStyle(fontSize:70,color:Colors.black),),
                Container(
                  color : Colors.red[900],
                  height : 2.0,
                  width : 220.0 ,
                ),//container
                SizedBox(height:10.0),//Sized Box
                Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.deepPurple)),
                SizedBox(height:20.0),//Sized Box
                Text("C | Python",style: TextStyle(fontSize:40,color:Colors.red),),
                SizedBox(height:20.0),//Sized Box
                Text("😉 Moody 😉",style: TextStyle(fontSize:30,color:Colors.black)),
                SizedBox(height:40.0),//Sized Box
                Text("☕ Serve Me Coffee,I'll Serve you code ☕",style: TextStyle(fontSize:30,color:Colors.black)),
                SizedBox(height:50.0),//Sized Box

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    
                     Card(
                      color: Colors.deepPurple[300],
                      margin: EdgeInsets.symmetric(horizontal:50.0,vertical:20.0),
                      elevation: 100,
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                          children:<Widget>[
                            Text("📝 My Skills 📝",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),),
                            SizedBox(height:15),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                             Text("C", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             Text("Python", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             Text("HTML", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             Text("Css", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             ],//children
                            ),//Row
                            SizedBox(height:10),
                          ]//children
                        )//column
                      ),//padding
                    ),//card
                    
                    Card(
                      color: Colors.deepPurple[300],
                      margin: EdgeInsets.symmetric(horizontal:50.0,vertical:20.0),
                      elevation: 100,
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                          children:<Widget>[
                            Text("🎓 Achievements 🎓",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),),
                            SizedBox(height:15),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                             Text("10th: 10 CGPA", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             Text("12th: 87% ", style: TextStyle(fontSize: 30, color:Colors.black54),),
                             ],//children
                            ),//Row
                            SizedBox(height:10),
                          ]//children
                        )//column
                      ),//padding
                    ),//card
                    
                    SizedBox(height:30),
                    Card(
                      color: Colors.deepPurple[300],
                      margin: EdgeInsets.symmetric(horizontal:50.0,vertical:20.0),
                      elevation: 100,
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                          children:<Widget>[
                            Text("📞 Contact Me 📞 ",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),),
                            SizedBox(height:15),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Text("0000000", style: TextStyle(fontSize: 30, color:Colors.black54),),
                                Text("0000000", style: TextStyle(fontSize: 30, color:Colors.black54),),
                              ]//children                        
                            ),//row
                            SizedBox(height:5),
                            Text("harshit0030.cse19@chitkara.edu.in",style: TextStyle(fontSize:30,color:Colors.black),),
                          ]//Children
                        )//Column
                      ),//Padding
                    ),  //card              
                  ],//children
                ),//column
              ],//Children
            ),//Column
           ),//SingleChildScrollVeiw
          ),//body 
        ),//home
    );//runapp
  }//widgetbuild
}//myapp extends
