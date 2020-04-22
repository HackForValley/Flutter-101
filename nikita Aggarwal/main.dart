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
          title: Text("My Portfolio"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.alarm), onPressed: () {}),
          ],
        ),
        body:Container(
          color:Colors.grey.shade300,
          child:SingleChildScrollView(physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[ 
              SizedBox(height:20.0),
              Container(
                height:180.0,
                width:180.0,
                decoration:BoxDecoration(
                 image: DecorationImage( image: NetworkImage("https://avatars2.githubusercontent.com/u/63896536?s=400&u=94ceb5460aa5ab5ea9406ccdcf0a272673712775&v=4"),), 
                 borderRadius:  BorderRadius.all(Radius.circular(85.0)),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            SizedBox(height:20.0),
            Text("Technical Skills", style: TextStyle(fontSize: 25, color:Colors.black87 ),),  
            Container(
                  color : Colors.black87,
                  height : 2.0,
                  width : 180.0 ,
            ),
            SizedBox(height:10.0),  
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("Language", style: TextStyle(fontSize: 20, color:Colors.black87),),
                    Text("Skill Level", style: TextStyle(fontSize: 20, color:Colors.black87),),
                   ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("C++       ", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Expert", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("Java", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("    Intermediate", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("PHP      ", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Expert", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("HTML,CSS", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Expert  ", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                ),
              ],
              ),  
              SizedBox(height:20.0),
              Column(
              children: <Widget>[ 
                 Text("Projects", style: TextStyle(fontSize: 25, color:Colors.black87 ),),  
                 Container(
                  color : Colors.black87,
                  height : 2.0,
                  width : 100.0 ,
            ),
 
                Card(
                color: Colors.grey.shade400,
                margin: EdgeInsets.symmetric(horizontal:50.0 , vertical:20.0),  
                elevation:5,
                child : Padding(padding: EdgeInsets.symmetric(horizontal:10.0 , vertical:10.0),  
                child: Column(
                children:<Widget>[
                 Text("ZhaTpat", style: TextStyle(fontSize: 23, color:Colors.black87 , backgroundColor: Colors.grey.shade300 ), ), 
                 SizedBox(height:10.0), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("Nikita", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Prince", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Rahul", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                 ), 
                  SizedBox(height:10.0), 
                  Text("Jhatpat is a platform for buying and selling second hand and used services and goods. Using this platform the buyer can bid on the product  and buy that the seller wants to sell.", style: TextStyle(fontSize: 20, color:Colors.black54),),
                ],
                ),
                ),               
                ),
                
                Card( 
                color: Colors.grey.shade400,
                margin: EdgeInsets.symmetric(horizontal:50.0 , vertical:20.0),  
                elevation:5,
                child : Padding(padding: EdgeInsets.symmetric(horizontal:10.0 , vertical:10.0),  
                child: Column(
                children:<Widget>[
                Text("Sarv Sanrakshan", style: TextStyle(fontSize: 23, color:Colors.black87 , backgroundColor: Colors.grey.shade300 ), ), 
                 SizedBox(height:10.0), 
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: <Widget>[
                    Text("Nikita", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Zubin", style: TextStyle(fontSize: 20, color:Colors.black54),),
                    Text("Konark", style: TextStyle(fontSize: 20, color:Colors.black54),),
                   ],
                 ), 
                  SizedBox(height:10.0), 
                  Text("This device can be used by elderly people who need all time medical attention and can't go to the doctor everyday.it helps the elders to adapt the healthy lifestyle by measuring the essential parameters.", style: TextStyle(fontSize: 20, color:Colors.black54),),
                ],
                ),
                ),               
                ),
              ],
              ),
          ],
            
        ),
        ),
       ), 
      ),
    );
  }
}
