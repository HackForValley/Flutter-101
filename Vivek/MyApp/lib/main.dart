import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
   
     

   

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    //double screenWidth = MediaQuery.of(context).size.width;
    
    return MaterialApp(
      title: "Me",
        theme: ThemeData(
           primarySwatch: Colors.green,
           fontFamily: 'Raleway-Italic',
          
        ),
        home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.menu,color: Colors.black54,size: 25,), onPressed: (){}),
            title: Text(
              "My App",
              style: TextStyle(fontFamily: 'RobotoMono-Bold',fontWeight: FontWeight.w900,color: Colors.redAccent,fontSize: 25),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search,color: Colors.black54,semanticLabel: 'Search',size: 25,), onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite,color: Colors.pink[100],semanticLabel: 'Love',size: 25,), onPressed: (){}),
              IconButton(icon: Icon(Icons.more_vert,color: Colors.black54,semanticLabel: 'Overflow Menu',size: 25,), onPressed: (){})
            ],
          ),
          body: Container(
           color: Colors.orange.shade100,
             
              child: SingleChildScrollView( 
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width,),
                  Padding(

                    padding: const EdgeInsets.all(10.0),
                    child: Container( 
                      height:180,
                      width:180,
                      
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://avatars2.githubusercontent.com/u/56130227?s=460&u=9ac5d7e6a5f3b5dbfc688db949fa1a3c1209988f&v=4")),
                        borderRadius: BorderRadius.all(Radius.circular(100.0))
                      ),
                      
                      

                    ),
                  ),
                  //Padding(padding: EdgeInsetsDirectional.only(bottom:40)),
                  
                  Text("Hi I'm Vivek",style: TextStyle(fontSize:40,color:Colors.black87,fontStyle: FontStyle.italic,fontWeight: FontWeight.w900)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 198.0,
                  ),
                  SizedBox(height: 30,),
                  Text("CSE 2nd Sem",style: TextStyle(fontSize:30,color:Colors.green,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 174.0,
                  ),
                  SizedBox(height: 15,),    
                  Text("I do everything i love but in codes",style: TextStyle(fontSize:12,color:Colors.blue,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400)),
                  Container(
                    color: Colors.blueAccent,
                    height: 1,
                    width: 175.0,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .02),
                  Text("My Skills",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.1)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                          color: Colors.teal[200],
                          elevation: 25,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                          child: Padding(padding: EdgeInsets.all(10),child: Image.network("https://www.w3.org/html/logo/img/mark-word-icon.png",width: MediaQuery.of(context).size.width*0.18,height: MediaQuery.of(context).size.height * 0.1,fit:BoxFit.fill),),
                          
                        ),
                        Card(
                          elevation: 25,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                          color: Colors.teal[200],
                          child: Padding(padding: EdgeInsets.all(10), child: Image.network("https://user-images.githubusercontent.com/11306104/28999421-69312b92-7a03-11e7-9268-a1a8756b5442.png",width: MediaQuery.of(context).size.width*0.18,height: MediaQuery.of(context).size.height * 0.1,fit:BoxFit.fill)),

                        ),
                        
                      
                      SizedBox(height: MediaQuery.of(context).size.height*0.1),
                    ],

                  ),
                  Card(
                          color: Colors.teal[200],
                          elevation: 25,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                          child: Padding(padding: EdgeInsets.all(10),child: Image.network("https://www.python.org/static/community_logos/python-logo-master-v3-TM.png",width: MediaQuery.of(context).size.width*0.30,height: MediaQuery.of(context).size.height * 0.1,fit:BoxFit.fill)),

                        ),
                  Text("My Interests",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.1)),
                  Card(
                    color: Colors.teal[200],
                    elevation: 25,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    child: Padding(padding: EdgeInsets.all(10),child: Image.network("https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png",width: MediaQuery.of(context).size.width*0.40,height: MediaQuery.of(context).size.height * 0.1,fit:BoxFit.fill))
                  )
                  
                ],
              
              
              ),
              
            ),
            
          ),

    );
  }
}