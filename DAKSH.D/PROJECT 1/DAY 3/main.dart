import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(day_3());
class day_3 extends StatelessWidget {
  const day_3({Key key}) :super(key: key);
  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
        title: "DAKSH DUTT",
        theme: ThemeData
          (primarySwatch: Colors.blue, ),
        home: Scaffold(
          appBar: AppBar(
              leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
              title: Text("My Portfolio"),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: (){}),
                IconButton(icon: Icon(Icons.person_add), onPressed: (){})
              ]
          ),
          body: Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.network('https://instagram.fdel3-1.fna.fbcdn.net/v/t51.2885-19/s320x320/81257509_518486182358448_1254996826939981824_n.jpg?_nc_ht=instagram.fdel3-1.fna.fbcdn.net&_nc_ohc=r04ZB-OTgKgAX9UwUGZ&oh=e3ae6c938568cdc02b32e97acc10b460&oe=5ECB7D9C'),
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
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Imagination is more Important than Innovation", style: TextStyle(fontSize:30, color: Colors.green)),
                      Text("I Am also a poet",style: TextStyle(fontSize: 30, color: Colors.green, ),)
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Container(
                      color: Colors.deepOrangeAccent,
                      height: 10,
                      width: 200
                  ),
                  Column(
                    children: <Widget>[
                      Text("-- The Lost Man --", style: TextStyle(fontSize: 40, color: Colors.white),),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Column(
                    children: <Widget>[

                      Text("Lost! Lost! Lost ,",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,)),
                      Text("A man is Lost ,",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,)),
                      Text("On the way to frost ," ,style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,)),
                      Text("Going through a port ,",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,)),
                      Text( "In the city of ghost ,",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,) ),
                      Text("Lost! Lost! Lost! ,",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.white,) ),
                      Text("A man is Lost.", style: TextStyle(fontStyle: FontStyle.italic, fontSize:25, color: Colors.white,))
                    ],
                  ),
                  Card(
                    color: Colors.deepPurple,
                    margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                    elevation: 5,
                    child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                            children:<Widget>[
                              Text("# Developer Area ", style: TextStyle(fontStyle: FontStyle.italic, fontSize:50, color: Colors.white,)),
                              SizedBox(height:15),
                              Image.network('https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png'),
                            ]
                        )
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Card(
                    color: Colors.deepPurple,
                    margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                    elevation: 5,
                    child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                            children:<Widget>[
                              SizedBox(height:15),
                              Image.network('https://pbs.twimg.com/profile_images/1169543878401253376/J7dIOTaW_400x400.jpg'),
                            ]
                        )
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Card(
                    color: Colors.deepPurple,
                    margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                    elevation: 5,
                    child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                            children:<Widget>[
                              SizedBox(height:15),
                              Image.network('https://gitforwindows.org/img/git_logo.png'),
                            ]
                        )
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Card(
                    color: Colors.deepPurple,
                    margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                    elevation: 5,
                    child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                            children:<Widget>[
                              SizedBox(height:15),
                              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ7AMpxuVfZmkxo4lPHRYhz2rKl6RzZHZDXfDEBB9sH_Ul95lNQ&usqp=CAU'),
                            ]
                        )
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 30,
                    width: 400,
                  ),
                  Text("This was a small Trailor, So Styay Tuned :) -",  style: TextStyle(fontStyle: FontStyle.italic, fontSize:35, color: Colors.white,),)
                ],
              ),
            ),

          ),
        )
    );
  }
}