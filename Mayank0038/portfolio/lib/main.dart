import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title:"Mayank",
      theme: ThemeData(
         primarySwatch: Colors.teal,
      ),


      home: Scaffold(

                                                                               //appbar
                                                                                appBar:AppBar(
                                                                                title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Portfolio",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
              Text(
                "for HackForValley",
                style: TextStyle(fontFamily: 'Raleway' , fontSize: 12),
              )
            ],
          ),
                                                                               leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
                                                                                actions: <Widget>[
                                                                                IconButton(icon: Icon(Icons.search), onPressed: (){}),
                                                                                IconButton(icon: Icon(Icons.person_add), onPressed: (){}),
                                                                                IconButton(icon: Icon(Icons.add_comment), onPressed: (){}),
                                                                                ],
                                                                                ),
                                                                              //appbar

        body: Container(
            color:Colors.blue.shade100,
            child:SingleChildScrollView(
              physics:BouncingScrollPhysics(),


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                
                                                                   //image
                                                                    Container(
                  
                                                                           height:250.0,
                                                                           width:250.0,
                                                                           decoration:BoxDecoration(
                                                                           image: DecorationImage(
                                                                           image: NetworkImage('https://avatars0.githubusercontent.com/u/57790631?s=460&v=4'),
                                                                   ),
                                                                          borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                                                   ),
                                                                   ),
                                                                  //image

//space and name                
Padding(padding: EdgeInsetsDirectional.only(bottom:40),),
Text("About Me",style: TextStyle(fontSize:40,color:Colors.deepOrangeAccent),),
//space and name                                                                         

                                                                         //blue line     
                                                                          Container(
                                                                                color: Colors.blue,
                                                                                height: 3.0,
                                                                                width: 210.0,
                                                                                  ),
                                                                         //blue line
 Column(
   mainAxisAlignment:MainAxisAlignment.center,
   children: <Widget>[
     Text(""),
     Text("Name : Mayank",style:TextStyle(fontSize:20,color:Colors.blueAccent.shade400)),
     Text("Email : mayank@gmail.com",style:TextStyle(fontSize:20,color:Colors.blueAccent.shade400)),
     Text("Contact : 9034XXXXXX",style:TextStyle(fontSize:20,color:Colors.blueAccent.shade400)),
     Text("Batch : CSE 2nd Sem",style: TextStyle(fontSize:20,color:Colors.blueAccent.shade400,)),
   ],
 ),
 
                
              SizedBox(height:40.0),
Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
              Text(" I'm not lazy, i'm just on energy saving mode 😉.",style: TextStyle(fontSize:34,color:Colors.brown)),
],
),
                SizedBox(height:30.0),

                Text("Skills",style: TextStyle(fontSize:40,color:Colors.deepOrangeAccent),),
                //blue line     
                                                                          Container(
                                                                                color: Colors.blue,
                                                                                height: 3.0,
                                                                                width: 120.0,
                                                                                  ),
                                                                         //blue line

                SizedBox(height:15.0),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Text("HTML"),
                        Image.network('https://img.icons8.com/ultraviolet/2x/html.png'),
                        Text("Pro"),
                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Text("CSS"),
                        Image.network('https://img.icons8.com/dotty/2x/css.png'),
                        Text("Pro"),
                      ],
                    ),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Text("C Program"),
                        Image.network('https://img.icons8.com/color/2x/c-programming.png'),
                        Text("Pro"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height:30.0),
                Text("My Projects", style:TextStyle(fontSize:40,color:Colors.deepOrangeAccent)),
                  Container(
                                                                                color: Colors.blue,
                                                                                height: 3.0,
                                                                                width: 236.0,
                                                                                  ),
                SizedBox(height:15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    
                    Card(
                      color: Colors.blue,
                      margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                      elevation: 5,
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                          children:<Widget>[
                            Text("Snake Game In C"),
                            SizedBox(height:15),
                            Image.network('https://img.icons8.com/color/2x/c-programming.png'),
                            SizedBox(height:15),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Text("C programming"),
                                Text("Canva"),
                              ]
                              
                            ),
                            SizedBox(height:5),
                            Text("github.com/Mayank-create"),
                            
                          ]
                        )
                      ),
                    ),
                    Card(
                      color: Colors.blue,
                      margin: EdgeInsets.symmetric(horizontal:45.0,vertical:15.0),
                      elevation: 5,
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:20),
                        child:Column(
                          children:<Widget>[
                            Text("calculator"),
                            SizedBox(height:15),
                            Image.network('https://img.icons8.com/color/2x/javascript.png'),
                            SizedBox(height:15),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Text("Javascript"),
                                Text("Canva"),
                              ]
                              
                            ),
                            SizedBox(height:5),
                            Text("github.com/Mayank-create"),
                            
                          ]
                        )
                      ),
                    ),
                    
                  ]
                ),
                
            ],
            ), 
),
),
),
);
}
}
