//import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: "SIDHARATH",
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
      home: Scaffold(

          appBar: AppBar(

            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(),
                  color: Colors.transparent,
                  border: Border.all(
                      width: 1
                  )
              ),
              child: IconButton(
                  icon: Icon(Icons.view_module), onPressed: () {}),
            ),
            title: Text("MYPORTFOLIO"),
            actions: <Widget>[
              Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 1
                    )
                ),
                child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
              ),
              Container(

                
                child: IconButton(icon: Icon(Icons.verified_user), onPressed: () {}),
              ),
              Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 1
                    )
                ),
                child: IconButton(
                    icon: Icon(Icons.person_add), onPressed: () {}),
              ),
            ],
          ),
          body:
          Container(
            color: Colors.orange[100],
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:20.0),
              Container(
                  height:250.0,
                  width:250.0,
                  
                decoration:BoxDecoration(

                 image: DecorationImage( image: ExactAssetImage('asset/images/lake.jpg'),), 
                 borderRadius:  BorderRadius.all(Radius.circular(130.0)),
                ),  
                    margin: new EdgeInsets.only(left: 65,right: 35,top: 20),
                  ),
                  SizedBox(height:25),
                  /*Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        style: BorderStyle.solid,
                    )
                ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                    children: <Widget>[
                       Text("   Name ",style:TextStyle(fontSize: 30,color:Colors.black87,fontStyle: FontStyle.normal ),),
                       Text("  Sidharath jain           ",style:TextStyle(fontSize: 25,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),
                       ],
                  ),
                  ), 
                  SizedBox(height:25),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        style: BorderStyle.solid,
                    )
                ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(" Batch  ",style:TextStyle(fontSize: 30,color:Colors.black87,fontStyle: FontStyle.normal ),),
                       Text("  CSE (2nd semester) ",style:TextStyle(fontSize: 25,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),
                    ],
                  ),
                  ),
                 
                  SizedBox(height:25),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        style: BorderStyle.solid,
                    )
                ),
                    child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                       Text(" Interest ",style:TextStyle(fontSize: 30,color:Colors.black87,fontStyle: FontStyle.normal ),),
                       Flexible(child: Text("       Frontend                                                                    Development                      ,Competative coding",style:TextStyle(fontSize: 25,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),
                        ) ],
                  ),
                  ),
                  SizedBox(height:25),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        style: BorderStyle.solid,
                    )
                ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                       Text(" My skills ",style:TextStyle(fontSize: 30,color:Colors.black87,fontStyle: FontStyle.normal ),),
                   Flexible ( child:  Text("C/C++,Python,Android,flutter,web development",style:TextStyle(fontSize: 25,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),
                  )],
                  ),
                  ),*/
                 //  Text("(Coding at late night with music beats)",style:TextStyle(fontSize: 30,color:Colors.indigoAccent,fontStyle: FontStyle.italic, ),),
          SizedBox(height: 45,),
          Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize:20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
          Text("  Name     :SIDHARATH JAIN  ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
          Text("  Batch    :CSE 2nd semester",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
           Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
            Text("      Interest   :Frontend development",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("|| Make a billing app for Mahavira softwares",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
            Text("|| competative coding ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
            Text("|| Code gladiators 2020  RANK 342 ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
            Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
           Text(" My skills             :C/C++  , Python,             ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.normal ),),
             Text("                                  Android  ,  flutter  , web              development",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
           Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
          Text("****  ****   ****  ****  ****  ****  ****  ****  ****  ",style:TextStyle(fontSize: 20,color:Colors.white70,fontStyle: FontStyle.italic ),),
             Text("****  ****   ****  ****  ****  ****  ****  ****  ****  ",style:TextStyle(fontSize: 20,color:Colors.white70,fontStyle: FontStyle.italic ),),
             Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
           Text("(Coding at late night with music beats)",style:TextStyle(fontSize: 20,color:Colors.indigo,fontStyle: FontStyle.italic, ),),
               Text("------------------------------------------------------------------------  ",style:TextStyle(fontSize: 20,color:Colors.deepOrange,fontStyle: FontStyle.italic ),),    
          Text("****  ****   ****  ****  ****  ****  ****  ****  ****  ",style:TextStyle(fontSize: 20,color:Colors.white70,fontStyle: FontStyle.italic ),),
             Text("****  ****   ****  ****  ****  ****  ****  ****  ****  ",style:TextStyle(fontSize: 20,color:Colors.white70,fontStyle: FontStyle.italic ),),
             
                ],
              ),
            ),
            ),   
          ),

           /* Column(
            children: <Widget>[
                    Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 1

                    )
                ),
                padding: new EdgeInsets.all(2.0),
                child: Image.asset('asset/images/lake.jpg',width: 200,)
              ),
             Text("  Name     :SIDHARATH JAIN  ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("  Batch    :CSE 2nd semester",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("      Interest   :Frontend development",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("|| Make a billing app for Mahavira softwares",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
            Text("|| competative coding ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
            Text("|| Code gladiators 2020  RANK 342 ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("   ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("    ",style:TextStyle(fontSize: 20,color:Colors.black87,fontStyle: FontStyle.italic ),),
             Text("(Coding at late night with music beats)",style:TextStyle(fontSize: 30,color:Colors.indigoAccent,fontStyle: FontStyle.italic, ),),
            
            ],

          ),*/
           
            
      
      );


  }

}
