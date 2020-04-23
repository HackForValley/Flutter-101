import 'package:flutter/material.dart';
void main() => runApp(MYPROFILE());
class MYPROFILE extends StatelessWidget {
  const MYPROFILE({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title:"Anshuman",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.attach_money ), onPressed: (){print("SEND MONEY TO ME");}),
          title: Text(
            "MY PROFILE"
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.call), onPressed: (){print("123456789");}),
            IconButton(icon: Icon(Icons.contact_mail ), onPressed: (){print("sample@gmail.com");}) 
          ],
        ),
        body: Container(
          color:Colors.teal[50],
          child:SingleChildScrollView(

            child: Column(
              children: <Widget>[
                
                SizedBox(height:30),
                Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                       image:NetworkImage("https://avatars2.githubusercontent.com/u/57260235?s=400&u=5b8b9e212a7446dad5693da84af1ad9ec4470bcb&v=4",),
                          ),
                    borderRadius: BorderRadius.all(Radius.circular(100.0))

                  ),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top:20),),
                Padding(padding: EdgeInsetsDirectional.only(bottom: 40),),
                Center(child: Text("HELLO ALL",style:TextStyle(fontSize:50,color:Colors.indigo),)),
                SizedBox(height:30),
                Center(child: Text("I am Anshuman",style:TextStyle(fontSize:30,color:Colors.black87),)),
                Center(child: Text("CSE 2nd SEM",style:TextStyle(fontSize:30,color:Colors.black87),)),
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text("'TALK IS CHEAP' || 'SHOW ME THE CODE'",style:TextStyle(fontSize:18,color:Colors.indigo),),
                        ),
                        SizedBox(height:20,),
                          Center(child: Text("Skills",style: TextStyle(fontSize:20,color: Colors.indigo ),))
                      ],
                    ),
                  ],
                ),
                
               SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                  children: <Widget>[
                    Center(child: Text("C",style: TextStyle(fontSize:20,color: Colors.black87),)),
                                        Center(child: Text("⭐⭐⭐",style: TextStyle(fontSize:20,color: Colors.black87),)),

                    
                     Center(child: Text("PYTHON",style: TextStyle(fontSize:20,color: Colors.black87),)),
                                                             Row(
                                                               children: <Widget>[
                                                                 Center(child: Text("⭐⭐⭐",style: TextStyle(fontSize:20,color: Colors.black87),)),
                                                               ],
                                                             ),

                     
                  ],
                ),
                Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  
                  children: <Widget>[
                    SizedBox(height: 25),
                    Card(
                      color: Colors.lightGreen[100],
                      margin: EdgeInsets.symmetric(horizontal:45,vertical:15),
                    child:Padding(
                    padding: EdgeInsets.symmetric(horizontal:30,vertical:30),
                    child: Column(
                      children: <Widget>[
                      Center(child: Text("My Projects",style: TextStyle(fontSize:20,color: Colors.indigo ),)),
                      SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Center(child: Text("Project 1:  ",style: TextStyle(fontSize:20,color: Colors.indigo ),)),
                                                                      Center(child: Text("Portfolio App",style: TextStyle(fontSize:20,color: Colors.indigo ),)),

                                              ],
                                            ),

                      
                      

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

class SingleCildScrollView {
}

