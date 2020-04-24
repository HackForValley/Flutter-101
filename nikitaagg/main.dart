import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor:Colors.white,
      ),
      home: MyHomePage(title: 'lets calculate'),
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
 

  void _incrementCounter() {
    setState(() {
     
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
       
           Card(child: Padding(padding:EdgeInsets.all(20.0),child: Text("Your Output is:",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold ),))),
            SizedBox(height:30.0),
            Padding(padding: EdgeInsets.all(15.0), child:
            TextField(
              decoration: InputDecoration(
                 contentPadding: EdgeInsets.all(20.0),
                 border: OutlineInputBorder(),
                 hintText: 'Enter a first value'
            ),
            ),
            ),
       
            Padding(padding: EdgeInsets.all(15.0), child:
            TextField(
              
              decoration: InputDecoration(
                 contentPadding: EdgeInsets.all(20.0),
                 border: OutlineInputBorder(),
                 hintText: 'Enter a Second value'
            ),
            ),
            ),        
            SizedBox(height:20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.black87,
                 color:Colors.white,
                 padding: const EdgeInsets.all(0.0),
                 child: const Text('ADD',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              ),
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.black87,
                 color:Colors.white,
                 padding: const EdgeInsets.all(0.0),
                 child: const Text('Minus',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              ),
           ],
           ),
           SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.black87,
                 color:Colors.white,
                 padding: const EdgeInsets.all(0.0),
                 child: const Text('Multiply',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              ),
              RaisedButton(
                 onPressed: () {},
                 textColor: Colors.black87,
                 color:Colors.white,
                 padding: const EdgeInsets.all(0.0),
                 child: const Text('Divide',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
              ),
           ],
           ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
