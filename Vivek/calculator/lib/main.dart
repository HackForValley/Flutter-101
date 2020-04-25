import 'package:flutter/material.dart';

void main() => runApp(Calculator());
int sum = 0;
int num1 = 0, num2 = 0;
String error = '';
class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: Colors.orange,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");  
  

  void _add() {
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      error = '';
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+num2;


    });
  }
  void _subtract() {
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      error = '';
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      if(num2 > num1){
        error = "Error";
        sum = 00000;
      }
      else
      sum = num1-num2;


    });
  }
  void _multiply() {
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      error = '';
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      
      sum = num1*num2;


    });
  }

void _divide() {
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      error = '';
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      if(num2 == 0){
        error = "Error";
        sum = 00000;
      }
      else
      sum = num1~/num2;


    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    double scrwid = MediaQuery.of(context).size.width;
    double scrhgt = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        
        child: ListView(
          padding: EdgeInsets.all(10),
        
          
          children: <Widget>[
            
            Card(
            
              elevation: 20,
              child: Padding(padding: EdgeInsets.all(10),child : Text("Result: $error $sum",style: TextStyle(color: Colors.orange.shade200,fontSize: scrhgt * scrwid / 6000))),
            ),
            SizedBox(height: scrhgt * 0.05,),
            
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Input 1"
              ),

              ),
            SizedBox(height: scrhgt * 0.05,),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              
              decoration: InputDecoration(
                
                hintText: "Input 2",
                //hintStyle: ,
              ),
              
            
            ),
            SizedBox(height: scrhgt * 0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: _add,
                  elevation: 50,
                  color: Colors.cyan[100],
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: scrwid * 0.055,vertical: scrhgt * 0.035),
                    child : Text("Add",style: TextStyle(color: Colors.blueAccent,fontSize: scrhgt * scrwid / 16000))
                  ),
                ),
                MaterialButton(
                  onPressed: _subtract,
                  elevation: 50,
                  color: Colors.cyan[100],
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: scrwid * 0.020,vertical: scrhgt * 0.035),
                     child : Text("Subtract",style: TextStyle(color: Colors.blueAccent,fontSize: scrhgt * scrwid / 16000))
                  ),
                ),
              ],
              
            ),
            SizedBox(height: scrhgt * 0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: _multiply,
                  elevation: 50,
                  color: Colors.cyan[100],
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: scrwid * 0.020,vertical: scrhgt * 0.035),
                    child : Text("Multiply",style: TextStyle(color: Colors.blueAccent,fontSize: scrhgt * scrwid / 16000))
                  ),
                ),
                MaterialButton(
                  onPressed: _divide,
                   elevation: 50,
                   color: Colors.cyan[100], 
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: scrwid * 0.030,vertical: scrhgt * 0.035),
                      child : Text("Divide",style: TextStyle(color: Colors.blueAccent,fontSize: scrhgt * scrwid / 16000))
                  ),
                ),
              ],
            ),
          ],
          
        
        ),
        
      ),
    ); 
  }
}
