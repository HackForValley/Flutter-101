import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

 // void _incrementCounter() {
  //  setState(() {
  //    _counter++;
 //   });
 // }

  @override
  Widget build(BuildContext context) {
    double screenH=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () {},
   ),
   bottomNavigationBar: BottomAppBar(
     color:Colors.yellow,
     child:Container(height: 50.0),
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Center(

        child: ListView(
          
          children: <Widget>[
             SizedBox(height:screenH*0.05),

            Card(child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 50 ), child:Text("Your Output is",style: TextStyle(fontSize: 20.0,color: Colors.cyanAccent)))),
            SizedBox(height:screenH*0.06),
            TextField(
              decoration: InputDecoration(
                hintText:"Input first Value",hintStyle: TextStyle(color:Colors.deepOrangeAccent),
              ),
              ),
               TextField(
              decoration: InputDecoration(
                hintText:"Input second Value",hintStyle: TextStyle(color:Colors.deepOrangeAccent),
              ),
              ),

              SizedBox(height:screenH*0.05),
                
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(onPressed: (){},
                      highlightColor: Colors.deepPurple,
                      child:Text("+",style:TextStyle(fontSize: 30.0)),
                      color: Colors.green,
                      ),

                       RaisedButton(onPressed: (){},
                      child:Text("-",style:TextStyle(fontSize: 30.0)),
                      color: Colors.green,
                      ),
                    ],
                  ),
               SizedBox(height:screenH*0.05), 
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){},
                  child:Text("*",style:TextStyle(fontSize: 30.0)),
                  color: Colors.green,
                  ),

                   RaisedButton(onPressed: (){},
                  child:Text("/",style:TextStyle(fontSize: 30.0)),
                  color: Colors.green,
                  ),
                ],
              ),

            ],
          ),  
          
          ],
        ),
      ),
   
    );
  }
}
