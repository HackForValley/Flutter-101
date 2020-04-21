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
            Column(
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
                width: 450,
                child: Image.asset('asset/images/lake.jpg',fit: BoxFit.cover)
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

          ),
           
            
      ),
      );


  }

}
