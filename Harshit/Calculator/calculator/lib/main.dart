import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calci',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor:Colors.grey,
        brightness: Brightness.dark,
      ),//theme
      home: MyHomePage(title:'Calculator'),
    );//Material app
  }//widget build
}//stateless widget

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {
    setState(() {
//tell the framework that something has changed
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children:<Widget>[
          Text(widget.title,style:TextStyle(fontSize:25),),
          Text("(Hack For Valley)",style:TextStyle(fontSize:12))
         ],//children
         ),  //Column      
        actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.person_add), onPressed: (){})
            ],//widget
      ),//appbar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

           Card(
             child: Padding(
               padding:EdgeInsets.all(15),
               child: Text("Get Output Here",style:TextStyle(fontSize: 30.0,color: Colors.white30,fontWeight: FontWeight.bold ),
              )//Text
             )//Padding
           ),//Card
            SizedBox(height:40.0),
            Padding(padding: EdgeInsets.all(10), child:
            TextField(
              decoration: InputDecoration(
               contentPadding: EdgeInsets.all(15),
               border: OutlineInputBorder(),
               hintText: "                                                                                            Enter first value"
            ),//Decoration
            ),//textfield
            ),//Padding

            Padding(padding: EdgeInsets.all(10), child:
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(),    
                hintText: "                                                                                            Enter Second value" 
              ),//Decoration
            ),//textfield
            ),//Padding
            SizedBox(height:40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.grey[900],
                 color:Colors.grey,
                 child:Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('-',style: TextStyle(fontSize: 30)),
              ),//Raisedbutton
           ],//children
           ),//row
           SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                 onPressed: () {},
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('X',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
              RaisedButton(
                 onPressed: () {},
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('/',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
           ],//children
           ), //row
          ],//children
        ),//column
      ),//center
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ), //floating action button
    );//scaffold
  }//Widget Build
}//class _Myhomepage