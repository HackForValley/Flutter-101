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
                                                                           image: NetworkImage('data:image/jpeg;base64,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'),
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
                        Image.network('data:image/png;base64,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'),
                        Text("Pro"),
                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Text("CSS"),
                        Image.network('data:image/png;base64,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'),
                        Text("Pro"),
                      ],
                    ),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Text("C Program"),
                        Image.network('data:image/png;base64,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'),
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
                            Image.network('data:image/png;base64,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'),
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
                            Image.network('data:image/jpeg;base64,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'),
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
            
          























//mains  
),
),
),
);
}
}
//mains