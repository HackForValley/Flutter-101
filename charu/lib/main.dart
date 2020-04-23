import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Charu",
      theme:ThemeData(
        primarySwatch:Colors.purple,
      ),
      home: Scaffold(
       
        appBar: AppBar(
          leading:IconButton(icon: Icon(Icons.settings), onPressed: (){}),
          title:Text("MY PORTFOLIO"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.notifications), onPressed:(){}),
           
          ],
        ),
      body: Container(
        color: Colors.purple[50],
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(""),
            Text(""),
            Container(
              height:150,
              width:150,
           
              decoration:BoxDecoration(
                image:DecorationImage(image: NetworkImage('https://avatars1.githubusercontent.com/u/60181628?s=460&v=4')),
             
              borderRadius: BorderRadius.all(Radius.circular(75.0)),
              ),
             
            ),
             SizedBox(height:10),
            Text("Hey! I'm Charu ",style:TextStyle(fontSize:30)),
           
           
            Text("CSE 1st year",style:TextStyle(fontSize:25)),
            
            
           Column(
           children:<Widget>[
             SizedBox(height:30),
             Text("MY SKILLS",style:TextStyle(fontSize:40),),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
              
                Text("C",style:TextStyle(fontSize:20,color:Colors.pink),),
                 Image.network('https://img.icons8.com/color/2x/c-programming.png',height:50,),
               
              ],
             ),
             Container(height:2,width:400,color:Colors.purple),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
               
                Text("Python",style:TextStyle(fontSize:20,color:Colors.pink),),
                 Image.network('https://img.icons8.com/color/2x/python.png',height:50,),
              ],
             ),
              Container(height:2,width:400,color:Colors.purple),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
                
                Text("Javascript",style:TextStyle(fontSize:20,color:Colors.pink),),
               Image.network('https://img.icons8.com/color/2x/javascript.png',height:50,),
                
              ],
             ),
              Container(height:2,width:400,color:Colors.purple),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
               
                Text("HTML",style:TextStyle(fontSize:20,color:Colors.pink),),
                Image.network('https://img.icons8.com/ultraviolet/2x/html.png',height:50,),
              ],
             ),
              Container(height:2,width:400,color:Colors.purple),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
                
                Text("CSS",style:TextStyle(fontSize:20,color:Colors.pink),),
                 Image.network('https://img.icons8.com/dotty/2x/css.png',height:50,),
              ],
             ),
              Container(height:2,width:400,color:Colors.purple),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
               
                Text("Flutter",style:TextStyle(fontSize:20,color:Colors.pink),),
                 Image.network('https://img.icons8.com/color/2x/flutter.png',height:50,),
              ],
             ),
              Container(height:2,width:400,color:Colors.purple),
           ],
           ),
            
            SizedBox(height:30),
            Text("MY PROJECTS",style:TextStyle(fontSize:40)),
           Card(
             color:Colors.purple,
             elevation:15,
              margin:EdgeInsets.symmetric(vertical:15,horizontal:40),
             child:Padding(padding:EdgeInsets.symmetric(horizontal: 40,vertical:30),
             child:Column(             
               children:<Widget>[
               Text("Project 1",style:TextStyle(fontSize:20,color:Colors.white)),
                 Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/The_C_Programming_Language_logo.svg/140px-The_C_Programming_Language_logo.svg.png',height:70,),
                 SizedBox(height:15),
                 Row(
                   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text("Charu",style:TextStyle(fontSize:20,color:Colors.white),),
                     Text("Daniel",style:TextStyle(fontSize:20,color:Colors.white),),
                   ],
                 ),
                 SizedBox(height:15),
                 Text("IOT based smart home",style:TextStyle(fontSize:15,color:Colors.white),),
               
             ],
             ),
                           ),
          ),
          Card(
             color:Colors.purple,
             elevation:15,
              margin:EdgeInsets.symmetric(vertical:15,horizontal:40),
             child:Padding(padding:EdgeInsets.symmetric(horizontal: 40,vertical:30),
             child:Column(             
               children:<Widget>[
               Text("Project 2",style:TextStyle(fontSize:20,color:Colors.white),),
                 SizedBox(height:15),
                 Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRO5JHsYyyVspcF_kkLXXSvDpPJLZBTrKLaPKwkJIah9bzyzndn&usqp=CAU',height:70),
                 SizedBox(height:15),
                 Row(
                   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text("Charu",style:TextStyle(fontSize:20,color:Colors.white),),
                     Text("Daniel",style:TextStyle(fontSize:20,color:Colors.white),),
                   ],
                 ),
                 SizedBox(height:15),
                 Text("Javascript quiz",style:TextStyle(fontSize:15,color:Colors.white),),
               
             ],
             ),
                           ),
          ),
            SizedBox(height:15),
            Text("Contact me: charusachdeva271@gmail.com",style:TextStyle(fontSize:15),),
            SizedBox(height:20),
 
          ]
   
         
        ),
          
        ),
      ),
      ),
    );
  }
}