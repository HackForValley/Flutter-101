import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nikita",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text("My Resume"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.alarm), onPressed: () {}),
          ],
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
            height:150.0,
            width:150.0,
            decoration:BoxDecoration(
            image: DecorationImage( image: NetworkImage("https://avatars2.githubusercontent.com/u/63896536?s=400&u=94ceb5460aa5ab5ea9406ccdcf0a272673712775&v=4"),
            ), 
             borderRadius:  BorderRadius.all(Radius.circular(72.0)),
            ),  
            ),
            SizedBox(height:20.0),
            Text("Personal Imformation", style: TextStyle(fontSize: 25, color:Colors.black87 ),),
            Container(
              color : Colors.black87,
              height : 2.0,
              width : 240.0 ,
            ),
            SizedBox(height:10.0),
            Text("Name :  Nikita Aggarwal", style: TextStyle(fontSize: 20, color:Colors.black54),),
            Text("Email :  niki@gmail.com", style: TextStyle(fontSize: 20, color:Colors.black54),),
            Text("Contact :  1234567890   ", style: TextStyle(fontSize: 20, color:Colors.black54),),
            SizedBox(height:20.0),
            Text("Qualifications", style: TextStyle(fontSize: 25, color:Colors.black87 ),),
            Container(
              color : Colors.black87,
              height : 2.0,
              width : 160.0 ,
            ),
            SizedBox(height:10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("10th: 8 CGPA", style: TextStyle(fontSize: 20, color:Colors.black54),),
                Text("12th: 8 CGPA", style: TextStyle(fontSize: 20, color:Colors.black54),),
                Text("BCA: 75%", style: TextStyle(fontSize: 20, color:Colors.black54),),
              ],
            ),
            SizedBox(height:20.0),
            Text("Interpersonal Skills", style: TextStyle(fontSize: 25, color:Colors.black87 ),),
                Container(
                  color : Colors.black87,
                  height : 2.0,
                  width : 220.0 ,
            ),
            SizedBox(height:10.0),
            Column(
              children: <Widget>[
                Text("Self-Confidence", style: TextStyle(fontSize: 20, color:Colors.black54),),
                Text("Leadership Quality", style: TextStyle(fontSize: 20, color:Colors.black54),),
                Text("Work Ethic   ", style: TextStyle(fontSize: 20, color:Colors.black54),),
                Text("Positive Attitude", style: TextStyle(fontSize: 20, color:Colors.black54),),
              ],
            ),
          ],
        
        ),
        
      ),
    );
  }
}
